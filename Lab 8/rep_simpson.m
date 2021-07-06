function R = rep_simpson(a, b, f, n)
  h = (b-a)/n;
  x_k_form = @(k, h, a) a+k*h;
  x = x_k_form([0:1:n], h, a);
  R = ((b-a)/(6*n))*...
  (f(a)+f(b)+4*sum(f((x(1:end-1)+x(2:end)).*1/2))+2*sum(f(x(2:end-1))));
endfunction