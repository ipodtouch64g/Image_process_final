myGradientAvg = zeros(720,1280,3);
for i=1:7
    avgGradient = zeros(720,1280,3);
    for j=204*(i-1)+1:204*i
        disp(j);
        avgGradient(:,:,1) = avgGradient(:,:,1) + imgradient(myVideo(:,:,1,j));
        avgGradient(:,:,2) = avgGradient(:,:,2) + imgradient(myVideo(:,:,2,j));
        avgGradient(:,:,3) = avgGradient(:,:,3) + imgradient(myVideo(:,:,3,j));
    end
    avgGradient = avgGradient./204;
    myGradientAvg = myGradientAvg + avgGradient;
end
myGradientAvg = myGradientAvg./7;
myGradientAvgIntensity = rgb2gray(myGradientAvg);