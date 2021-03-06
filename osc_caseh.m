%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   SYSTEM:                                                               %
%   OSCILLATOR BASED ON CASE H SPROTT                                     %
%   Dy(1) = -y(2)+y(3)*y(3)                                               %
%   Dy(2) = y(1) + a*y(2)                                                 %
%   Dy(3) = y(1)- b*y(3)                                                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function fy = osc_caseh(y)

%%Constants Parameters (Coeficients)
a = 0.5; b = 1.0; 

n = length(y);
fy = zeros(n,1);

%%ODE SYSTEM
fy = [-y(2)+y(3)*y(3);
       y(1) + a*y(2);
       y(1)- b*y(3)];
end

