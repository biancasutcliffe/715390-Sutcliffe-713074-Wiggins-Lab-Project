% Author: Bianca Sutcliffe
function [ output_signal ] = reduce_Amplitude( input_signal,n )
%reduces the amplitude of a signal by a specified n factor
    % input_signal is the digital input signal
    % n is the factor to reduce the signal by 
    
    signal = input_signal/n;
    output_signal = (mean(input_signal)) - (mean(signal))  + signal;
end

