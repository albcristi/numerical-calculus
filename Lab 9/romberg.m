function table = romberg(f, a, b, n)
  table = nan(n);
  for i=1:n
    table(i, 1) = rep_trapezium(a,b,f, 2.^(i-1));
    for j=2:i
      table(i,j) = (4^(-j+1)*table(i-1,j-1)-table(i, j-1))./...
      (4^(-j+1)-1);
    endfor
  endfor
endfunction