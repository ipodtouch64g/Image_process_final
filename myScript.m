 k=1428;
  findGradientHelper;
  myGradientAvgIntensity = rgb2gray(myGradientAvg);
avgI = sum(myVideo,4)/k;
avgIIntensity = rgb2gray(avgI);

myX = linspace(-1,1,720);
myY = linspace(-1,1,1280);
X = repmat(myX,1280,1)';
Y = repmat(myY,720,1);
untitled2
% untitled3

