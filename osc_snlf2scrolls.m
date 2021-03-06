%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   SYSTEM:                                                               %
%   OSCILLATOR BASED ON SERIES NON LINEAR FUNCTIONS                       %
%   Dy(1) = y(2)                                                          %
%   Dy(2) = y(3)                                                          %
%   Dy(3) = -a*y(1)-b*y(2)-c*y(3)+d1*f(y(1))                              %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function fy = osc_snlf2scrolls(y)

%%Constants Parameters (Coeficients)
a = 0.7; b = 0.7; c = 0.7; d1=0.7;

%%Non-Linear Function
alfa= 0.2;           %Breakpoint
k=1;                    %Saturation Level
m=(k+k)/(alfa+alfa);    %Slope
%%Function Definition
if (y(1)<=-alfa)
    fy1=-k;
elseif (y(1)<alfa)
    fy1=m*y(1);
else
    fy1=k;
end

n = length(y);
fy = zeros(n,1);

%%ODE SYSTEM
fy = [y(2);
       y(3);
       -a*y(1)-b*y(2)-c*y(3)+d1*fy1];
end