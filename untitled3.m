for i=1:720
        for j=1:1280
                myResult(i,j)  = feval(fitresult,myX(i),myY(j));
        end
end