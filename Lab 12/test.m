% test bisection method
f = @(x)(x-2).^2 - log(x);

er=10^-4;
a =1;
b= 2;
disp('Bisection');
[c, iter] = bisection_method(f, a, b);
fzero(f, [a,b]);

%false position method
disp('False position');
[c, iter] = false_position_method(f,a,b);

%secant method
disp('Secant method');
f=@(x) x^3-x^2-1;
x0=1;
x1=2;
[x, iter] = secant_method(f,x0,x1);

%newton method
f = @(x) x-0.8*sin(x) -2*pi/10;
x=1;
df = @(x) 1-0.8*cos(x);
##[x, iter] = newton_method(f, df, x)
##fzero(f,x)

%ex 1
% x=cos(x) ===> cos(x)-x=0
f = @(x) cos(x)-x;
df = @(x) -cos(x)-1;
x=pi/4;
[x,i] = newton_method(f,df,x)
