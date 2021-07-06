function I = adaptive_quadrature(a, b, f, err)
  I1 = rep_simpson(a, b, f, 1);
  I2 = rep_simpson(a, (a+b)/2, f, 1) + rep_simpson((a+b)/2,b, f, 1);
  if abs(I1-I2) < 15 * err
    I = I2;
    return
  endif
  I = adaptive_quadrature(a, (a+b)/2, f, err/2)+ ...
  adaptive_quadrature((a+b)/2, b, f,err/2);
endfunction