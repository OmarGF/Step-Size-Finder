%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   SYSTEM:                                                               %
%   OSCILLATOR BASED ON CHUA CIRCUIT                                      %
%   Dy(1) = A*(y(2)-y(1)-fy1)                                             %
%   Dy(2) = C*(y(1)-y(2)+y(3))                                            %
%   Dy(3) = -B*y(2)                                                       %
%   Fy1 for two-scrolls:                                                  %
%   fy1= (m1*y(1))+(0.5*(m0-m1)*(abs(y(1)+1)-abs(y(1)-1)))                %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function fy = osc_chua2scrolls(y)

%%Constants Parameters (Coeficients)
m0=-8/7; m1=-5/7; A=10; B=14.286; C=1;

%%Function Definition
fy1= (m1*y(1))+(0.5*(m0-m1)*(abs(y(1)+1)-abs(y(1)-1)));

n = length(y);
fy = zeros(n,1);

%%ODE SYSTEM
fy = [A*(y(2)-y(1)-fy1);
       C*(y(1)-y(2)+y(3));
       -B*y(2)];
end