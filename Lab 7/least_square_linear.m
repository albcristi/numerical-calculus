function [a,b] = least_square_linear(nodes, values)
  % get the coefficients of phi(x)=aX+b
  m = length(nodes) - 1;
  a = ((m+1)*sum((nodes.*values))-sum(nodes.*sum(values)))/...
  ((m+1)*sum(nodes.*nodes)-sum(nodes)*sum(nodes));
  b = (sum(nodes.^2)*sum(values)-sum(nodes.*values)*sum(nodes))/...
      ((m+1)*sum(nodes.*nodes)-sum(nodes)^2);
endfunction