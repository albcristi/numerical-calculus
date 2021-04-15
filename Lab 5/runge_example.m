function Runge_example(n=18)
clf; hold on; grid on;
f=@(x) 1./(1+25*x.^2);
fplot(f,[-1,1],'-b','linewidth',2);
nodes=linspace(-1,1,n);
values=f(nodes);
plot(nodes,values,'ok','markerfacecolor','r',...
'markersize',8);
Lx=@(x) LagrangeBary(nodes,values,x);
fplot(Lx,[-1,1],'-r','linewidth',2)
k=0:n-1;
nodes=cos((2*k+1)/(2*n)*pi);
%=the roots of the Chebyshev Tn(x)=cos(n*acos(x)) (see lab2)
values=f(nodes);
plot(nodes,values,'ok','markerfacecolor','g',...
'markersize',8);
Lx=@(x) LagrangeBary(nodes,values,x);
fplot(Lx,[-1,1],'-g','linewidth',2)

 legend({'f','equid.nodes','L equid.','Cheby.nodes','L Cheby'},"fontsize", 15,"location", "northeastoutside")
set(gca,"fontsize", 15)