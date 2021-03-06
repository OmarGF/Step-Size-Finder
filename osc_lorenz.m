%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   SYSTEM:                                                               %
%   OSCILLATOR BASED ON LORENZ EQUATIONS                                  %
%   Dy(1) = sigma*(y(2)-y(1))                                             %
%   Dy(2) = -y(1)*y(3)+r*y(1)-y(2)                                        %
%   Dy(3) = y(1)*y(2)-beta*y(3)                                           %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function fy = osc_lorenz(y)

%%Constants Parameters (Coeficients)
% sigma = 16; r = 40; beta = 4;
sigma = 10; r = 20; beta = 8/3;  %computational chaos
n = length(y);
fy = zeros(n,1);

%%ODE SYSTEM
fy = [sigma*(y(2)-y(1));
       -y(1)*y(3)+r*y(1)-y(2);
       y(1)*y(2)-beta*y(3)];
end
