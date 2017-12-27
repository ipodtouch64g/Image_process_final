
myResultI = find50(avgIIntensity);
for x = 1:10
    disp(x);
    [fitresultI,gof] = createFit(myY,myX,myResultI);
    for i=1:720
        for j=1:1280
            if ~isnan(myResultI(i,j))
                myResultI(i,j)  = feval(fitresultI,myX(i),myY(j));
            end
        end
    end
    snapShotI(:,:,x) = myResultI;
    myResultI(abs(myResultI(:)-avgIIntensity(:))>0.1*avgIIntensity(:)) = NaN;
    myResultI = find50(myResultI);
    
end






