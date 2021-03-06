%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This function calculate the EigenValues of a System                     %
% Inputs of Jacobiano                                                     %
%          1) n is the time where is calculated the eigenvalue.           %
%          2) system = Name of function, @osc_"NameOfFunction".           %
% Output                                                                  %
%          The EigenValue of system, calculated in x.                     %
%                                                                         %
% The function Jacobianogrg calculate the Jacobian Matrix                 %
% of a vectorial function with vectorial argument:                        %
%                                                                         %
%                 f: R^n ---> R^n                                         %
%                                                                         %
% The script that calculate the Jacobian Matrix is Jacobianogrg.m         %
%                                                                         %
% Inputs of Jacobianogrg                                                  %
%          1) x is the vector where is calculated Jf(x).                  %
%          2) Name of function, @osc_"NameOfFunction".                    %
%          3) Function evaluated in the point x                           %
% Output                                                                  %
%          The Jacobian Matriz of system, calculated in x.                %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [ vps ] = jacobiano(n,system,yi,var)
    jacs = [];                            % Check the number of variables.
    
    for i=1:length(n)
        sample=n(i);
        x = yi(sample,:)';                          % Point where the Jacobian Matrix is calculated
        f0 = system(x);                             % Evaluation of the equation system in the point x.
        % Calculation of Jacobian in x: Jf(x)
        jac= Jacobianogrg(x, system, f0);           % Obtaining the estimated Jacobian at t
        jacs((i-1)*var+1:(i-1)*var+var,:)=jac;            % Saving the Jacobian
        vps((i-1)*var+1:(i-1)*var+var,:)=eig(jac);          % Obtaining and saving the EigenValues
    end
    
    % Saving the File_Data with the eigenvalues
    fileID = fopen('lambda.dat','w');
    for j = 1:length(vps)
        fprintf(fileID,'%f      %f\n',real(vps(j)),imag(vps(j)));
    end
    fclose(fileID);
end