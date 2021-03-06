%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                         %
%         INSTITUTO NACIONAL DE ASTROFISICA OPTICA Y ELECTRONICA          %
%                 COORDINACION DE CIENCIAS COMPUTACIONALES                %
%                                                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                         %
%   Project   :   Integration Step-Size                                   %
%   Program   :   report.m                                                %
%   Date      :   December 11th, 2019                                     %
%   Autors    :   Omar Guillen Fernandez                                  %
%                 Gustavo Rodriguez Gomez                                 %
%                                                                         %
%                                                                         %
%   Description:                                                          %
%								                                          %
%   This function prints the report of the step sizes calculated,         %
%   following the methodology of the numerical methods stability.         %
%   Besides, recommends the most efficient step size according to the     % 
%   computation time required for the proposed system solution.           %
%                                                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                         %
% Inputs:                                                                 %
%                                                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [ system ] = report(hf,system,yini,tini,tfin)
    n = [1 2 3 4 3].*(tfin-tini)./hf;     % Find the minimum number of evaluations for each step-size
    c = find(n==(min(n)));              % Find the position in the vector
    methods = {'Forward-Euler','Runge-Kutta 2nd order','Runge-Kutta 3th order','Runge-Kutta 4th order','Backward-Euler'};

    % Print the Solutions
    fprintf('This methodology finds the next upper bounds of the\nstep-size intervals according the numerical method:\n'); 
    fprintf('\nForward-Euler        :  H = %d',hf(1));
    fprintf('\nRunge-Kutta 2nd order:  H = %d',hf(2));
    fprintf('\nRunge-Kutta 3th order:  H = %d',hf(3));
    fprintf('\nRunge-Kutta 4th order:  H = %d',hf(4));
    fprintf('\nBackward-Euler       :  H = %d',hf(5));
    
    fprintf('\n\nand after a quantitative study of evaluations,\nrecommends to use the numerical method')
    fprintf('\n"%s" with h = %d',char(methods(c)),double(hf(c)/10));
    fprintf('\nfor solving the system "%s"\n\n',func2str(system)); 
    fprintf('\n############################################\n\n',func2str(system));
    
    
end