%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                         %
%         INSTITUTO NACIONAL DE ASTROFISICA OPTICA Y ELECTRONICA          %
%                 COORDINACION DE CIENCIAS COMPUTACIONALES                %
%                                                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                         %
%   Project   :   Integration Step-Size                                   %
%   Program   :   PasosInt.m                                              %
%   Date      :   March 11th, 2004                                        %
%   Autors    :   Marcial Jimenez Lopez (MJL)                             %
%                 Gustavo Rodriguez Gomez (GRG)                           %
%                                                                         %
%   Edited by :   Omar Guillen Fernandez                                  %
%                                                                         %
%   Description:                                                          %
%								                                          %
%   This function determines the range of integration step-size (Delta_t) %
%   given the eigenvalues (lambda_i) of a real matrix A nxn (i=1,..,n)    %
%   and given the absolut stability region of Forward-Euler and Runge-    %
%   Kutta (2nd, 3rd and 4th order) numerical method                       %
%                                                                         %
%     All values with Re >= 0 are deleted.                                %
%                                                                         %
%     Example:    -5.0000 + 10.0000i                                      %
%                 -5.0000 - 10.0000i                                      %
%                 -2.0000 + 1.0000i                                       %
%                                                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                         %
% Inputs:                                                                 %
%         system:         Name of system to evaluate(@osc_"NameOfSystem") %
%         lambda.dat:     File with EigenValues (x + yi)                  %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function [ hf ] = PasosInt(system,var)
    load lambda.dat;

    for ki=1:(length(lambda))/var

        L = lambda((ki-1)*var+1:(ki-1)*var+var,:);
        tL = rank(1,L);
        n  = tL(1,1);

        X  = L(:,1);
        Y  = L(:,2);
        Lambs = complex(X,Y);

        %============================================================================================================
        % h for Euler method
        k=0;
        he=0;
        for i=1:1:var
            % Delete all values with Re >= 0
            if(X(i)<0)
                k=k+1;
                he(i)= -2 * X(i) / (X(i)^2 + Y(i)^2);
            end
        end
        he(he==0) = [];
        % Obtaining the minimum for Re(h_i)
        hme(ki) = min(he);
        %============================================================================================================
        % h for Runge-Kutta 2 method
        hmin=0;hi=0;hr=0;h=0;
        for i=1:1:var
            % Delete all values with Re >= 0
            if(X(i)<0)
                h3 = (X(i)^2 + Y(i)^2)^2  / 4;
                h2 = (X(i)^2 + Y(i)^2) * X(i);
                h1 = 2 * X(i)^2;
                h0 = 2 * X(i);

                Ph = [h3 h2 h1 h0];
                h  = roots(Ph);
                hi = imag(h);
                hr = real(h);

                % Values with Re > 0 and Im = 0
                for j = 1:3
                    if hi(j) == 0 && hr(j)>0
                        hmin(i) = h(j);
                    end
                end
            end
        end
        hmin(hmin==0) = [];
        % Obtaining the minimum for Re(hmin_i)
        hmrk2(ki) = min(hmin);
        %============================================================================================================
        % h for Runge-Kutta 3 method
        hmin=0;hi=0;hr=0;h=0;
        for i=1:1:var
            % Delete all values with Re >= 0
            if(X(i)<0)
                h5 = (X(i)^6/36)   + (X(i)^4*Y(i)^2/12) + (X(i)^2*Y(i)^4/12) + (Y(i)^6/36);
                h4 = (X(i)^5/6)    + (X(i)^3*Y(i)^2/3)  + (X(i)*Y(i)^4/6);
                h3 = (7*X(i)^4/12) + (X(i)^2*Y(i)^2/2)  - (Y(i)^4/12);
                h2 = (4*X(i)^3/3);
                h1 = 2 * X(i)^2;
                h0 = 2 * X(i);

                Ph = [h5 h4 h3 h2 h1 h0];
                h  = roots(Ph);
                hi = imag(h);
                hr = real(h);

                % Values with Re > 0 and Im = 0
                for j = 1:5
                    if hi(j) == 0 && hr(j)>0
                        hmin(i) = h(j);
                    end
                end
            end
        end
        hmin(hmin==0) = [];
        % Obtaining the minimum for Re(hmin_i)
        hmrk3(ki) = min(hmin);
        %============================================================================================================
        % h for Runge-Kutta 4 method
        hmin=0;hi=0;hr=0;h=0;
        for i=1:1:var
            % Delete all values with Re >= 0
            if(X(i)<0)
                h7 = (X(i)^8/576)  + (X(i)^6*Y(i)^2/144) + (X(i)^4*Y(i)^4/96) + (X(i)^2*Y(i)^6/144) + (Y(i)^8/576);
                h6 = (X(i)^7/72)   + (X(i)^5*Y(i)^2/24)  + (X(i)^3*Y(i)^4/24) + (X(i)*Y(i)^6/72);
                h5 = (5*X(i)^6/72) + (X(i)^4*Y(i)^2/8)   + (X(i)^2*Y(i)^4/24) - (Y(i)^6/72);
                h4 = (X(i)^5/4)    + (X(i)^3*Y(i)^2/6)   - (X(i)*Y(i)^4/12);
                h3 = (2*X(i)^4/3);
                h2 = (4*X(i)^3/3);
                h1 = 2 * X(i)^2;
                h0 = 2 * X(i);

                Ph = [h7 h6 h5 h4 h3 h2 h1 h0];
                h  = roots(Ph);
                hi = imag(h);
                hr = real(h);

                % Values with Re > 0 and Im = 0
                for j = 1:7
                    if hi(j) == 0 && hr(j)>0
                        hmin(i) = h(j);
                    end
                end
            end
        end
        hmin(hmin==0) = [];
        % Obtaining the minimum for Re(hmin_i)
        hmrk4(ki) = min(hmin);
%==========================================================================
        % h for Backward-Euler method
        hmin=0;hi=0;hr=0;h=0;
        for i=1:1:var
            % Delete all values with Re >= 0
            if(X(i)<0)
                h3 = (X(i)^2 + Y(i)^2)^2;
                h2 = 2 * (X(i)^2 + Y(i)^2) * X(i);
                h1 = 3 * X(i)^2 - Y(i)^2;
                h0 = 2 * X(i);

                Ph = [h3 h2 h1 h0];
                h  = roots(Ph);
                hi = imag(h);
                hr = real(h);

                % Values with Re > 0 and Im = 0
                for j = 1:3
                    if hi(j) == 0 && hr(j)>0
                        hmin(i) = h(j);
                    end
                end
            end
        end
        hmin(hmin==0) = [];
        % Obtaining the minimum for Re(hmin_i)
        hmbe(ki) = min(hmin);
        
        end
    
    hme(hme==0) = []; hmrk2(hmrk2==0) = []; hmrk3(hmrk3==0) = []; hmrk4(hmrk4==0) = []; hmbe(hmbe==0) = [];    
    hf(1) = min(hme); hf(2) = min(hmrk2); hf(3) = min(hmrk3); hf(4) = min(hmrk4); hf(5) = min(hmbe);    
end