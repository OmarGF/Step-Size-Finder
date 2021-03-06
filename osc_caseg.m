%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   SYSTEM:                                                               %
%   OSCILLATOR BASED ON CASE G SPROTT                                     %
%   Dy(1) = A*y(1)+B*y(3)                                                 %
%   Dy(2) = y(1)*y(3)-y(2)                                                %
%   Dy(3) = -y(1)+y(2)                                                    %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function fy = osc_caseg(y)

%%Constants Parameters (Coeficients)
A = 0.4; B =1; 

n = length(y);
fy = zeros(n,1);

%%ODE SYSTEM
fy = [A*y(1)+B*y(3);
       y(1)*y(3)-y(2);
       -y(1)+y(2)];
end


