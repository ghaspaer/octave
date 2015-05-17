function ym=funm(xd,xj,funp)
a=xd-xj;
b=feval(funp,xd)-feval(funp,xj);
res1=(a*feval(funp,xd))/b;
ym=1-res1;
end