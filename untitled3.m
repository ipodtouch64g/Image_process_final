% 
% myResultI = find50(avgIIntensity);
% for x = 1:10
%     disp(x);
%     [fitresultI,gof] = createFit(myY,myX,myResultI);
%     for i=1:720
%         for j=1:1280
%             if ~isnan(myResultI(i,j))
%                 myResultI(i,j)  = feval(fitresultI,myX(i),myY(j));
%             end
%         end
%     end
%     snapShotI(:,:,x) = myResultI;
%     myResultI(abs(myResultI(:)-avgIIntensity(:))>0.1*avgIIntensity(:)) = NaN;
%     myResultI = find50(myResultI);
%     
% end
for i = 1:3
    fittedAvgI0 = find50(avgI(:,:,i));
for x = 1:10
    disp(x);
    [fitresultG,gof] = createFit(myY,myX,fittedAvgI0);
    fittedAvgI0  = feval(fitresultG,X,Y);
%     for i=1:720
%         for j=1:1280
%             if ~isnan(myResultG(i,j))
%                 myResultG(i,j)  = feval(fitresultG,myX(i),myY(j));
%             end
%         end
%     end
    snapShotI(:,:,i,x) = fittedAvgI0;
    diffIandI0 = abs(fittedAvgI0-avgI(:,:,i));
    fittedAvgI0(diffIandI0>0.1*fittedAvgI0) = NaN;
    disp('NaN in next:');
    disp(numel(find(isnan(fittedAvgI0))));
end
end






