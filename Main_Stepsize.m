clear all;  clc;            % Cleaning variables and console
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Project:      Stepsize finder of different numerical methods based on   %
%               a methodology to stability analysis of chaotic systems    %
%               integration                                               %
%                                                                         %
%                                                                         %
%                                                                         %
% Subject:      Numerical methods.                                        %
% Edited by:    Omar Guillen Fernandez                                    %
% Date/hour:    02/12/2019   /  10:00                                     %
% Institution:  INAOE                                                     %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Inputs:                                                                 %
%         system = Name of system to evaluate(@NameOfSystem)              %
%		  yi     = Initial Conditions                                     %
%         h      = Step-size                                              %
%         evals  = Number of evaluations over time                        %                        
%         tini   = Initial Time of Integration                            %
%         tfin   = Final Time of Integration                              %
%                                                                         %
% Output:                                                                 %
%         Recommended step sizes for the solution of the chaotic system   %
%         with different numerical integration methods.                   %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% NOTE: If you don't want to use the User Interface :

% 1.- Comment the next line:

Gui_Probe1;

% 2.- Uncomment the next part of code and enter the Variables:
% %==========================================================================
% %==========================================================================
% % Input Variables 
% system  = @osc_lorenz;                  % Name of System
% var     = 3;                            % Number of System Variables
% yini    = [0.01; 0.01; 0.01];           % Initial Conditions
% h       = 0.001;                        % Step-size
% evals   = 100;                          % Evaluations over time
% tini    = 0.0;                          % Initial time
% tfin    = 200.0;                        % Final Time
% %==========================================================================
% %==========================================================================
% % Other variables
% n = ceil((tfin-tini)/h);                    % Number of iterations
% 
% % Call of the initial numerical solver function 
% % Calling the RK4 Solver
% yi = fRK4_NumericalSolution(var,yini,h,tini,tfin,system);
% 
% % Call of the function that obtains the samples to make the Jacobian matrices 
% pos = pos_eval(evals,tini,n);
% 
% % Call of the function that obtains the Jacobian Matrices and the eigenvalues
% jacobiano(pos,system,yi,var);
% 
% % Call of the function that obtain the results of step-sizes
% hf = PasosInt(system,var);
% 
% % Call of the function that print the report
% report(hf,system,yini,tini,tfin);
