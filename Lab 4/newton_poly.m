function L = newton_poly(nodes, values, X)
  table = div_diff(nodes, values);
  coef = table(1, :);
  L = zeros(size(X));
  for ind=1:length(X)
    product = 1;
    for i=1:length(coef)
      L(ind) = L(ind) + coef(i)*product;
      product = product * (X(ind)-nodes(i));
    endfor
  endfor
endfunction