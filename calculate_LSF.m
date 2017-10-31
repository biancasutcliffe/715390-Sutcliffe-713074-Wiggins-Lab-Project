% Author: Bianca Sutcliffe
function [ new_LSF ] = calculate_LSF( b_regression, LSF_frame )
% Applies the Linear regression mapping function
    % new_LSF is the translated LSF values
    % b_regression is the coefficients for the linear mapping function
    % LSF_frame is the input LSF values

% initialise array 
new_LSF =[];

for i=1:length(b_regression)
    % obtain the correct coefficients for the correct frequency
    b = b_regression(:,i);
    % calculate the new LSF values
    new_LSF(i,:) =b(1,1) + b(2,1)*LSF_frame(i,:);
end

end

