% Author: Bianca Sutcliffe
function [ coefficients,variance ] = obtain_LPC(frame,ncoeff)
% Calculates the LPC coefficients per frame
    % coefficients is the resulting LPC coefficients per frame for all 50 audio frame inputs
    % g is the resulting variance per frame for all 50 audio frame inputs
    % frame is the specific frame ( is an array of 50 frames for 50 audio inputs
    % ncoeff dictates how many coefficients need to be calculated
    
% initialise variables    
[row,~] = size(frame);
coefficients = [];
variance =[];

% do for all 50 frames
for i=1: row
    
    % grab the respective frame
    certain_frame = frame(i,:);
    % calculate the respective LPC's
    [a,g] = lpc(certain_frame',ncoeff);
    % concatinate the outputs
    coefficients = [coefficients;a];
    variance = [variance; g];
end
end

