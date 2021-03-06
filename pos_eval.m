%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                         %
% FUNCTION:      This function generates random numbers evenly distributed%
%                 and sorted in ascending form over time                  %
%                                                                         %
%                                                                         %
% Edited by:    OMAR GUILLEN FERNANDEZ                                    %
% Date/hour:    30/11/2019   /  08:00                                     %
% Institution:  INAOE                                                     %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [ pos ] = pos_eval(evals,tini,n)
    A = sort(rand (1,evals));           % Sorted random numbers
    pos = ceil((n - tini) * A + tini);  % Linear transformation and rounded 
    pos = horzcat(1,pos);               % Enter position number 1
end