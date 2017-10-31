% Author: Bianca Sutcliffe
function [frame] = framing(i, samples_per_frame, input )
% calculates the individual frames from the input audio
    % frame returns a single frame for every audio input
    % i is the frame index needed
    % samples_per_frame is the amount of audio sample data used per frame
        % 30 ms of audio constitues a frame
    % input is the digitilised audio input
    
[row,~] = size(input);

% initialise the frame array 
frame  = [];
% need to collect the first frame
i = i-1;
for j=1:row
    % grab specific audio input
    x = input(j,:);
    
    % grab individual frame
    specific_frame = x(1,i*samples_per_frame + 1 : i*samples_per_frame + samples_per_frame);
    
    % concatinate frames at the end
    frame = [frame ; specific_frame];
end

end

