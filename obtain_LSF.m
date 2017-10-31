% Author: Bianca Sutcliffe
function [LSF] = obtain_LSF(coefficients)
% Obtains the LSF from the input LPC coefficients 
    % LSF is the line spectral frequencies
    % coefficients are the input LPC coefficients

% initialise vaiables
[row,~] = size(coefficients);
LSF =[];

% calculates the LSF for each audio input
for i=1:row
    % obtains the specific LPC for each audio input frame
    specific_coefficient = coefficients(i,:);
    % converts LPC to LSF
    specific_LSF = poly2lsf(specific_coefficient); 
    % concatinates the LSF
    LSF = [LSF, specific_LSF];
    
end
end

