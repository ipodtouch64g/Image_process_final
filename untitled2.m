
fittedAvgGI0 = find50(myGradientAvgIntensity);
for x = 1:10
    disp(x);
    [fitresultG,gof] = createFit(myY,myX,fittedAvgGI0);
    fittedAvgGI0  = feval(fitresultG,Y,X);
%     for i=1:720
%         for j=1:1280
%             if ~isnan(myResultG(i,j))
%                 myResultG(i,j)  = feval(fitresultG,myX(i),myY(j));
%             end
%         end
%     end
    snapShotG(:,:,x) = fittedAvgGI0;
    diffGIandI0 = abs(fittedAvgGI0-myGradientAvgIntensity);
    fittedAvgGI0(diffGIandI0>0.1*myGradientAvgIntensity) = NaN;
    disp('NaN in next:');
    disp(numel(find(isnan(fittedAvgGI0))));
end






