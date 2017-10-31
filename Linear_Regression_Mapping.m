% Author: Bianca Sutcliffe
% Implementation of a Linear Regression mapping function using LPCs and LSF
% of human and robotic data
clear all;

%% input the human and robot voices 
 [audio_input_human,audio_input_robot, fs, shortest_length, amount_of_training_data]  = read_in_data();

%% Framing 

% Number of LPC co-efficients to calculate
ncoeff=2+fs/1000;          

% 30ms frame size
samples_per_frame = 1440;
         
% calculate the frame size               
frame_size = floor(shortest_length/samples_per_frame)-1; 

% initialise
total_human_LSF = [];
total_robot_LSF = [];
variance_human = [];
variance_robot =[];

format long 
for i = 1:frame_size
   
   % frame human
   frame_human  = framing(i, samples_per_frame, audio_input_human);
    
   % frame robot
   frame_robot  = framing(i, samples_per_frame, audio_input_robot);
    
   % get LPC coefficients and variance from each human audio frame
   [coefficients_human,g_human] = obtain_LPC( frame_human,ncoeff);
    
   % get LPC coefficients and variance from each human audio frame
   [coefficients_robot,g_robot] = obtain_LPC( frame_robot,ncoeff);
    
   % calculate the LSF's for each from each human audio frame (rows = LSF values, col = no. of audio samples)
   LSF_human = obtain_LSF( coefficients_human );
    
   % calculate the LSF's for each from each robot audio frame
   LSF_robot = obtain_LSF( coefficients_robot);
    
 %% Linear Regression   
 
    % initialise temporary variables 
    temp =[];
    temp2 =[];
    [r,c] = size(LSF_human);
     
    % Place all LSF values into a vector
    for k = 1:c
        temp = [temp', LSF_human(:,k)']';
    end
    total_human_LSF = [total_human_LSF, temp];

    for k = 1:c
        temp2 = [temp2', LSF_robot(:,k)']';
    end
    total_robot_LSF = [total_robot_LSF, temp2];
    
    % concatinate the variance
    variance_human = [variance_human; g_human];
    variance_robot = [variance_robot; g_robot];
         
    
end

% Collect and cluster all the LSF points
collected_data_human= collect_LSF_points(total_human_LSF,frame_size,amount_of_training_data);
collected_data_robot = collect_LSF_points(total_robot_LSF,frame_size,amount_of_training_data);

% Perform Linear regresson for the LPC coefficients
output_b = linear_regression(collected_data_robot, collected_data_human);

% Perform Linear regression for the variance 
X = [ones(length(variance_robot),1) variance_robot];
b = X\variance_human;


%% Testing
% this part uses the trained data from above to produce a re-synthesised voice

% obtain testing data audio file
[testing_input,testing_fs]= audioread('Voices_233\robo_p233_223.wav');
testing_input = reduce_Amplitude(testing_input,2);

testing_ncoeff=2+testing_fs/1000;       

% initialise the final output audio signal 
resultant_speech = [];

% calculate the testing data frame size
frame_size = floor(length(testing_input)/samples_per_frame)-1; % went with x2 becuase it is smaller
     
for i = 0:frame_size
  
    % Frame the data
    testing_frame = testing_input(i*samples_per_frame + 1 : i*samples_per_frame + samples_per_frame,1);
    
    % Do pre-emphasis Filtering
    a = 0.95;
    testing_frame = filter([1, -a], 1, testing_frame);
    
    % Extract LPC
    [testing_a,testing_g]=lpc(testing_frame,testing_ncoeff);

    % Extract LSF
    testing_LSF_a_old = poly2lsf(testing_a);

    % Applying the mapping Function 
    trained_g = b(1,1)+b(2,1)*testing_g;
    learnt_LSF_a  = calculate_LSF(output_b, testing_LSF_a_old );
         
    % Convert the learnt LSF's back into LPC's
    learnt_LPC_a = lsf2poly(learnt_LSF_a);
           
    % Obtain the excitation signal
    e = filter(learnt_LPC_a,sqrt(trained_g),testing_frame);
    
	% Re-synthesise the speech
    resultant_speech = [resultant_speech; filter(sqrt(trained_g),learnt_LPC_a,e)]; 
    
end
%% Write Result to .wav file

wavwrite(resultant_speech,fs,'LR_re_synthesised');
