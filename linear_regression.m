%Author: Bianca Sutcliffe
function output_b = linear_regression(collected_x, collected_y)
% Calculates the Linear regression mapping function for each frequency cluster
    % output_b is the resultant linear coefficients for each frequency cluster
    % collected_x is a set of LSF values
    % collected_y is a set of LSF vlaues
    % y = Bx
    
format long;

% initialisation
output_b =[];
[~,columns] = size(collected_x);

for i=1:columns

    % grab the respective LSF points
    x = collected_x(:,i); 
    y = collected_y(:,i);

    X = [ones(length(x),1) x];
    % do the linear regression
    b = X\y;
    
    % concatinate linear coefficients
    output_b = [output_b, b]; 
end
 
end