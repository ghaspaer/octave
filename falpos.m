source funm.m
source funp.m
function xn=falpos(funp,funm,xd,xj,umbral=0.001)
if feval(funp,xd)*feval(funp,xj)>=0
	error("NO hay cambio de signo");
end
error=1;
if feval(funp,xj)>0
	xj1=xj;
    xd1=xd;
else
	xj1=xd;
	xd1=xj;
end

while error > umbral
	xn=feval(funm,xd1,xj1,funp);
	error=abs(feval(funp,xn));
	des=xn;
	printf("xn: %d",error)
	if 	des < 0
		xd1=des;
	else
		xj1=des;
	end
end

end





