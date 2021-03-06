%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   SYSTEM:                                                               %
%   OSCILLATOR BASED ON ROSLER EQUATIONS                                  %
%   Dy(1) = -(y(2)-y(3))                                                  %
%   Dy(2) = -y(1)+A*y(2)                                                  %
%   Dy(3) = B+y(3)*(y(1)-C)                                               %
%                                                                         %
% Initial conditions: 2.9;-1.3;25.0 ? -6.78,-6.78,0.02                    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function fy = osc_rossler(y)

%%Constants Parameters (Coeficients)
A = 0.2; B = 0.2; C = 5.7;

n = length(y);
fy = zeros(n,1);

%%ODE SYSTEM
fy = [-y(2)-y(3);
       y(1)+A*y(2);
       B+(y(3)*(y(1)-C))];
end
