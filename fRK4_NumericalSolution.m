%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% FUNCTION:      This function calculates and plots the oscillators time  %
%                 series by RK4 numerical method; And save a file with    %
%                 the time series (system.txt)                            %
%                                                                         %
% Subject:                                                                %
% Edited by:    OMAR GUILLEN FERNANDEZ                                    %
% Date/hour:    01/12/2018   /  15:00                                     %
% Institution:  INAOE                                                     %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
function [ yi ] = fRK4_NumericalSolution(var,yini,h,tini,tfin,system)
    if var ~= length(yini)
        error('The number of variables does not match the initial conditions.');
        % Break the program if the variables are wrong
    end
    
    fileID = fopen('system.txt','w');       % Create and open the File data
    ni = ceil((tfin-tini)/h);               % Iterations
    yi = zeros(ni+1,var);                  	% Create the final matrix
    yi(1,1:var) = yini';                   	% Fill the first line
    
    for i = 1:ni
        fprintf(fileID,'%6.6f %12.12f %12.12f %12.12f\n',...
                tini,yi(i,:));          % Print the iteration
      
        k1 = system( yi(i,:)' );                        % Obteining k1
        k2 = system( yi(i,:)' + 0.5*h*k1 );             % Obteining k2
        k3 = system( yi(i,:)' + 0.5*h*k2 );             % Obteining k3
        k4 = system( yi(i,:)' + h*k3 );                 % Obteining k4

        yi(i+1,:) = yi(i,:)'+((1/6)*(k1+(2*k2)+(2*k3)+k4)*h);   % Runge-Kutta4 
        tini = tini+h;                                          % Iteration Time
        
        if yi(i,1) > 1e10
            error('The system was not resolved. Check the initial conditions or the step size..');
            % Break the program if the system is not solved
        end
    end
 
    
    
    fclose(fileID);
    

%==========================================================================

    % Plotting Results
    % Convert color code to 1-by-3 RGB array (0~1 each)
    %str = '#000000';    %Black
    str = '#008B8B';    %Dark Cyan
    color = sscanf(str(2:end),'%2x%2x%2x',[1 3])/255;
    % Time series
    figure('Name','Time Series','Position',[-100 -100 1050 550])
    %set(figure,'Position',[100 100 1200 300])
    subplot(3,1,1);
    plot(yi(:,1),'k','linewidth',1.4); %xlim([0 tfin])
    xlabel('Iteration'); ylabel('X');
    grid;
    set(gca,'FontSize',16);
    subplot(3,1,2);
    plot(yi(:,2),'k','linewidth',1.4); %xlim([0 tfin])
    xlabel('Iteration'); ylabel('Y');
    grid;
    set(gca,'FontSize',16);
    subplot(3,1,3);
    plot(yi(:,3),'k','linewidth',1.4); %xlim([0 tfin])
    xlabel('Iteration'); ylabel('Z');
    grid;
    set(gca,'FontSize',16);

    % Atractors
    figure('Name','Atractors','Position',[350 -100 720 520])
    subplot(2,2,1)
    plot3(yi(:,1),yi(:,2),yi(:,3),'Color',color,'linewidth',1.4);
    xlabel('X'); ylabel('Y'); zlabel('Z');
    grid;
    set(gca,'FontSize',16);
    view([-6 10])
    subplot(2,2,2)
    plot(yi(:,1),yi(:,2),'Color',color,'linewidth',1.4);
    xlabel('X'); ylabel('Y');
    grid;
    set(gca,'FontSize',16);
    subplot(2,2,3)
    plot(yi(:,1),yi(:,3),'Color',color,'linewidth',1.4);
    xlabel('X'); ylabel('Z');
    grid;
    set(gca,'FontSize',16);
    subplot(2,2,4)
    plot(yi(:,2),yi(:,3),'Color',color,'linewidth',1.4);
    xlabel('Y'); ylabel('Z');
    grid;
    set(gca,'FontSize',16);

end