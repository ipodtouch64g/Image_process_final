function [ output ] = find50( input )
%NORMALIZE Summary of this function goes here
%   Detailed explanation goes here
    M = median(input(:));
    output = input;
    output(output < M) = NaN;

end


