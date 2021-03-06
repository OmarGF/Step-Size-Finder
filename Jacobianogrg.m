%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% This function compute a forward difference gradient of the cost         % 
% function J                                                              %
%                                                                         %
% Inputs                                                                  %
%          1) x is the vector where is calculated Jf(x).                  %
%          2) Name of function, @osc_"NameOfFunction".                    %
%          3) Function evaluated in the point x                           %
% Output                                                                  %
%          The Jacobian Matriz of system, calculated in x.                %
%                                                                         %
% Author : Gustavo Rodriguez-Gomez                                        %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function jacoaprox = Jacobianogrg(x, f, fx)
    epsmaq =  2.220446049250313e-16;      % Machine epsilon
    const =  0.4472135954999579;          % sqrt(1/5)

    % h minimum and maximum allowed
    hmin = 1.0e-10;
    hmax = 1.0e-01;

    n = length(x);
    jacoaprox = zeros(n,n);  % Jacobian Matrix

    % Loop to approximate the Jacobian matrix
 	for j = 1:n
        xj = x(j);
        absx = abs(xj);
		 
        % Scaling the maximum value of hmax
        hmaxesc = hmax * max(1.0, absx);
		 
        % Calculating the value of h
        if(absx <= 1.0e-10) 
            h = hmin;
        else
            h = const*sqrt(epsmaq * absx);
        end
		
        % Verifying that h meets the lower bound				   
        if (h < hmin)
            % h out of range
            h = hmin;
        end

        % Scaling the value of h
        h = max(1.0, absx)*h;
		 
		% Verifying that h meets the upper bound 
		if(h > hmaxesc)
			h = hmaxesc;
		end
			
        % Improving the estimate of h (Shampine suggestion)
    	temp = x(j) + h;
    	h = temp - x(j);
        
        % Perturbation of the jth variable of the vector x.
        x(j) = x(j) + h;
		 
        % Evaluating f(x+h)
        fxh = feval(f,x);

        % Aproximating the Jacobian matrix through forward difference
        jacoaprox(:,j) = (fxh - fx) / h;
        x(j) = xj;
	end
end

