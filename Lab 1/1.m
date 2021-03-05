f=@(x) exp(10*x.*(x.-1)).*sin(12*pi*x)

fplot(f,[0,1])