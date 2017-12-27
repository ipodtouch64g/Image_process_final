M = median(myGradientAvgIntensity(:));
my50 = myGradientAvgIntensity;
my50(my50 < M) = NaN;