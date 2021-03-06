%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   SYSTEM: A new chaotic attractor                                       %
%   OSCILLATOR BASED ON LIU EQUATIONS                                     %
%   Dy(1) = a*(y(2)-y(1))                                                 %
%   Dy(2) = b*y(1)-k*y(1)*y(3)                                            %
%   Dy(3) = -c*y(3)+h*y(1)*y(1)                                           %
%
% Initial conditions: (2.2, 2.4, 38)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function fy = osc_liu(y)

%%Constants Parameters (Coeficients)
a=10.0; b = 40.0; k = 1.0; c=2.5; h=4;

n = length(y);
fy = zeros(n,1);

%%ODE SYSTEM
fy = [a*(y(2)-y(1));
      b*y(1)-k*y(1)*y(3);
      -c*y(3)+h*y(1)*y(1)];
end
