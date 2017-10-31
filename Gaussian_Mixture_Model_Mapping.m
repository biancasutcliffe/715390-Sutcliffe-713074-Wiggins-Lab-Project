% Author: Lindzi Wiggins
% Implementation of a Gaussian Mixture model based on the joint probability
% of human and robotic lpc coefficients for each frame of an audio signal

clear all;

% Read in the human and robotic training data set
[audio_h,fs,audio_r,fs2] = getTrainingData();

% Determine number of LPC coefficients
ncoeff_human=2+fs/1000;     % rule of thumb for formant estimation for human
ncoeff_robot=2+fs2/1000;    % rule of thumb for formant estimation for robot

samples_per_frame = 1440; % for 30ms frame length
frames = floor(length(audio_h)/samples_per_frame)-1;  % Determine number of frames

% Variables to store LSF output
Xr = [];
Xh = [];

for i = 0:frames % i is the frame number
    % create frame
    robotFrame = audio_r(i*samples_per_frame + 1 : i*samples_per_frame + samples_per_frame,1);
    humanFrame = audio_h(i*samples_per_frame + 1 : i*samples_per_frame + samples_per_frame,1);

    % get Linear prediction filter coefficients
    [a_robot,var_robot] = lpc(robotFrame,ncoeff_robot);
    [a_human,var_human] = lpc(humanFrame,ncoeff_human);
    % get corresponding LSF from the LPC coefficients
    lsf_r = poly2lsf(a_robot)'; %make row vector rather than column vector
    lsf_h = poly2lsf(a_human)';
    
    % Store lsfs of current frame
    Xr = [Xr  lsf_r];
    Xh = [Xh  lsf_h];
    
end

%% fit GMM to the training data
gmmData = [Xr' Xh'];
e = 0.001; % add to covariance matrix each iteration to avoid singularity
Q = 5; % number of mixtures

obj_fit = gmdistribution.fit(gmmData,Q,'Regularize',e);
warning('off','last')

%% GMM for regression implementation

% Rename/reshape X to correspond to algorithm variables for ease of understanding
X = Xr;
Y = Xh;
Z = [X; Y]; 

% Read in testing data
[robot_test,fs3] = audioread('Voices_233\robo_p233_223.wav');%dtw_robo_p233_025.wav'); % new input POSTER INPUT WAS 223
[human_test,fs3] = audioread('Voices_233\human_p233_223.wav');%human_p233_025.wav'); % new input for human
% Number of LPC coefficients
ncoeff=2+fs3/1000;           % rule of thumb for formant estimation for robot

lsf_predicted = [];
speech_transformed = [];

frames = floor(length(robot_test)/samples_per_frame)-1;

%Frame robot testing data vector
for i = 0:frames % i is the frame number
    lsf_frame_predicted = zeros(1,50); % initialise output LPC vector
    % create x frame
    robot_frame = robot_test(i*samples_per_frame + 1 : i*samples_per_frame + samples_per_frame,1);
    % get Linear prediction filter
    [r_lpc,r_var] = lpc(robot_frame,ncoeff);
    % get residual of audio
    residual = filter(r_lpc,sqrt(r_var),robot_frame); 
    % get corresponding LSF from the LPC coefficients
    r_lsf = poly2lsf(r_lpc)';
    % loop through each mixture of GMM
    for q = 1:Q
        % get current mean and covariance matrices
        mu_q = obj_fit.mu(q,:);
        Sigma_q = obj_fit.Sigma(:,:,q);

        % find transformation matrix
        W_q = Sigma_q(2,1)*(Sigma_q(1,1))^(-1);
        % Find bias vector of class q
        b_q = mu_q(2) - Sigma_q(2,1)*(Sigma_q(1,1)^(-1))*mu_q(1);

        % Find normal distribution for x
        N_q = 1/(2*pi*sqrt(abs(Sigma_q(1,1))))*exp((-1/2)*(r_lsf - mu_q(1))*(Sigma_q(1,1)^(-1))*(r_lsf - mu_q(1))');
        N_p_sum =0;
        
        for p = 1:Q
            mu_p = obj_fit.mu(p,:);
            Sigma_p = obj_fit.Sigma(:,:,p);
            N_p = 1/(2*pi*sqrt(abs(Sigma_p(1,1))))*exp((-1/2)*(r_lsf - mu_p(1))*(Sigma_p(1,1)^(-1))*(r_lsf - mu_p(1))');

            N_p_sum = N_p_sum + obj_fit.PComponents(p)*N_p;
        end
        % Find probability of component q given curent input lsf
        prob = (obj_fit.PComponents(q)*N_q)/N_p_sum;

        current_prediction = (W_q*r_lsf + b_q)*prob;
        
        lsf_frame_predicted = lsf_frame_predicted + current_prediction;
        
    end
    
    lsf_predicted = [lsf_predicted lsf_frame_predicted'];
    % order lsf in ascending order
    lsf_frame_predicted = sort(lsf_frame_predicted);
    % Convert back to LPC coefficients
    lpc_predicted = lsf2poly(lsf_frame_predicted');
    % Resynthesise speech using robot excitation
    new_speech = filter(sqrt(r_var),lpc_predicted,residual);    % Current frame
    speech_transformed = [speech_transformed; new_speech];      % Add all frames
end

%% Write Result to .wav file

wavwrite(speech_transformed,fs,'GMM_re_synthesised');
