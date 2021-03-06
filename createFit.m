function [fitresult, gof] = createFit(myY, myX, my50)
%CREATEFIT(MYY,MYX,MY50)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : myY
%      Y Input : myX
%      Z Output: my50
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 27-Dec-2017 18:11:08


%% Fit: 'untitled fit 1'.
[xData, yData, zData] = prepareSurfaceData( myY, myX, my50 );

% Set up fittype and options.
ft = fittype( 'poly44' );

% Fit model to data.
[fitresult, gof] = fit( [xData, yData], zData, ft );

% % Plot fit with data.
% figure( 'Name', 'untitled fit 1' );
% h = plot( fitresult, [xData, yData], zData );
% legend( h, 'untitled fit 1', 'my50 vs. myY, myX', 'Location', 'NorthEast' );
% % Label axes
% xlabel myY
% ylabel myX
% zlabel my50
% grid on
% view( -40.7, 90.0 );


