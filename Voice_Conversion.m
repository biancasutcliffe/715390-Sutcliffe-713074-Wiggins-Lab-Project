% Authors: Lindzi Wiggins and Bianca Sutcliffe
% Project Title: Voice Conversion of a Synthetically Generated Voice
% Project Number: 17P50
% Supervisor: Professor David Rubin

% This script runs both the Linear Regression and Gaussian mixture model mapping function
    % An LPC coefficients graph is displayed comparing the:
            % Human voice
            % Synthetically Generated Voice
            % Linear Regression Re-synthesied Voice
            % Gaussian Mixture Model Re-synthesised Voice
    % The resultant speech files can be found in the current directory and are called:
            % LR_re_synthesised
            % GMM_re_synthesised
        
        
%% Linear Regression
disp('Running the Linear Regression Code')
Linear_Regression_Mapping


%% Gaussian Mixture Model
disp('Running the Gaussian Mixture Model Code')
Gaussian_Mixture_Model_Mapping

%% Plot LCP coefficients Comparison Graph

% Obtain audio
[robot,fs] = audioread('Voices_233\robo_p233_223.wav'); 
[human,fs] = audioread('Voices_233\human_p233_223.wav');
[gmm,fs] = audioread('GMM_re_synthesised.wav');
[linear,fs] = audioread('LR_re_synthesised.wav');

% Calculate the number of LPC coefficients to produce
ncoeff=2+fs/1000;           

% obtain LPC coefficients
[a_robot_total, var_robot_total] = lpc(robot,ncoeff);
[a_human_total, var_human_total] = lpc(human,ncoeff);
[a_gmm_transformed, var_gmm_transformed] = lpc(gmm,ncoeff);
[a_linear_transformed, var_linear_transformed] = lpc(linear, ncoeff);

% Plot Graph
[h1,f1]=freqz(1,a_robot_total,512,fs);
figure
plot(f1,20*log10(abs(h1)+eps),'r','Linewidth',1.2);
hold on;

[h2,f2]=freqz(1,a_human_total,512,fs);
plot(f2,20*log10(abs(h2)+eps),'k','Linewidth',1.2);
hold on;

[h3,f3]=freqz(1,a_gmm_transformed,512,fs);
plot(f3,20*log10(abs(h3)+eps),'b','Linewidth',1.2);
hold on;

[h4,f4]=freqz(1,a_linear_transformed,512,fs);
plot(f4,20*log10(abs(h4)+eps),'Color', [0, .7, 0],'Linewidth',1.2);

legend('Synthetically Generated Source Voice','Human Target Voice','GMM Transformed Voice','LR Transformed Voice');
xlabel('Frequency (Hz)','FontSize',12);
ylabel('Gain (dB)','FontSize',12);
title('Overall Frequency Response of LPC Coefficients','FontSize',12);
hold off;


