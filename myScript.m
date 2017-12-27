for i = 1:142
    [myGradientMag(:,:,1,i),myGradientDir(:,:,1,i)] = imgradient(myVideo(:,:,1,i)); 
    [myGradientMag(:,:,2,i),myGradientDir(:,:,2,i)] = imgradient(myVideo(:,:,2,i));
    [myGradientMag(:,:,3,i),myGradientDir(:,:,3,i)] = imgradient(myVideo(:,:,3,i)); 
end
myGradientAvg = sum(myGradientMag,4)/k;
myGradientAvgIntensity = rgb2gray(myGradientAvg);
avgI = sum(myVideo,4)/k;
avgIIntensity = rgb2gray(avgI);
untitled2
untitled3
