%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%   SYSTEM:                                                               %
%   OSCILLATOR BASED ON CHEN EQUATIONS                                    %
%   Dy(1) = a*y(1)-y(2)*y(3)+y(4)                                         %
%   Dy(2) = y(1)*y(3)-b*y(2)                                              %
%   Dy(3) = y(1)*y(2)-c*y(3)+y(1)*y(4)                                    %
%   Dy(4) = -y(2)                                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [ fty ] = osc_dadras4d( y )

% Parametros del sistema caotico
a=8.0; b=40.0; c=14.9;
% Conjunto de ecuaciones del sistema de Ruan

fty = [a*y(1)-y(2)*y(3)+y(4);
       y(1)*y(3)-b*y(2);
       y(1)*y(2)-c*y(3)+y(1)*y(4);
       -y(2)];

end

