myResult = my50;
for x = 1:10
    [fitresult,gof] = createFit(myY,myX,myResult);
    for i=1:720
        for j=1:1280
            if ~isnan(myResult(i,j))
                myResult(i,j)  = feval(fitresult,myX(i),myY(j));
            end
        end
    end
    myResult(abs(myResult(:)-myGradientAvgIntensity(:))>0.1*myGradientAvgIntensity(:)) = NaN;
    snapShot(:,:,x) = myResult;
end






