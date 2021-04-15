function [H, D] = hermite_poly(nodes, values, der_vals, X)
  table = div_diff_double_nodes(nodes, values, der_vals);
  coef = table(1, :);
  H = zeros(size(X));
  D = zeros(size(X));
  dnodes = repelem(nodes, 2);
  for ind=1:length(X)
    product = 1;
    der = 0;
    for i=1:length(coef)
      H(ind) = H(ind) + coef(i)*product;
      D(ind) = D(ind)+der*coef(i);
      der = der*(X(ind)-dnodes(i))+product;
      product = product * (X(ind)-dnodes(i));
    endfor
  endfor
  endfunction