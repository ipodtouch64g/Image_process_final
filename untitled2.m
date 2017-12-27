
myResultG = find50(myGradientAvgIntensity);
for x = 1:10
    disp(x);
    [fitresultG,gof] = createFit(myY,myX,myResultG);
    for i=1:720
        for j=1:1280
            if ~isnan(myResultG(i,j))
                myResultG(i,j)  = feval(fitresultG,myX(i),myY(j));
            end
        end
    end
    snapShotG(:,:,x) = myResultG;
    myResultG(abs(myResultG(:)-myGradientAvgIntensity(:))>0.1*myGradientAvgIntensity(:)) = NaN;
    myResultG = find50(myResultG);
    
end
for i=1:720
        for j=1:1280
                lastG(i,j)  = feval(fitresultG,myX(i),myY(j));
        end
end





