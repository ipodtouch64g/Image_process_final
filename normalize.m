function [ output ] = normalize( input )
%NORMALIZE Summary of this function goes here
%   Detailed explanation goes here
    max_input = max(input(:));
    min_input = min(input(:));
    output = (input-min_input)/(max_input-min_input);
    


end

