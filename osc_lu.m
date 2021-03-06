%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   SYSTEM: A NEW CHAOTIC ATTRACTOR COINED                                %
%   OSCILLATOR BASED ON L? EQUATIONS                                      %
%   Dy(1) = a*(y(2)-y(1))                                                 %
%   Dy(2) = -y(1)*y(3)+c*y(2)                                             %
%   Dy(3) = y(1)*y(2)-b*y(3)                                              %
%                                                                         %
% Initial conditions: (2.2, 2.4, 38)                                      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function fy = osc_lu(y)

%%Constants Parameters (Coeficients)
a=36.0; b = 3.0; c=28.0; 

n = length(y);
fy = zeros(n,1);

%%ODE SYSTEM
fy = [a*(y(2)-y(1));
      -y(1)*y(3)+c*y(2);
      y(1)*y(2)-b*y(3)];
end
