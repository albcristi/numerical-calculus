function R = rep_rectangle(a, b, f, n)
  h = (b-a)/n;
  %x_k_form = @(k, h, a) a+k*h;
  %x = x_k_form([0:1:n], h, a)
  x = a+h/2:h:b-h/2;
  R = sum(f(x))*h;
endfunction