% for i = 1:1428
%     [myGradientMag(:,:,1,i),myGradientDir(:,:,1,i)] = imgradient(myVideo(:,:,1,i)); 
%     [myGradientMag(:,:,2,i),myGradientDir(:,:,2,i)] = imgradient(myVideo(:,:,2,i));
%     [myGradientMag(:,:,3,i),myGradientDir(:,:,3,i)] = imgradient(myVideo(:,:,3,i)); 
% end
avgI = sum(myVideo,4)/k;
avgIIntensity = rgb2gray(avgI);
[myGradientAvg(:,:,1),myGradientDir(:,:,1)] = imgradient(avgI(:,:,1)); 
[myGradientAvg(:,:,2),myGradientDir(:,:,2)] = imgradient(avgI(:,:,2)); 
[myGradientAvg(:,:,3),myGradientDir(:,:,3)] = imgradient(avgI(:,:,3)); 
myGradientAvgIntensity = rgb2gray(myGradientAvg);
myX = linspace(-1,1,720);
myY = linspace(-1,1,1280);
untitled2
untitled3
