function x = backwards_substitution(A, b)
  % Ax = b, A - tri. matrix
  x = zeros(size(b));
  for i=length(b):-1:1
    x(i) = (b(i) - A(i, i+1:length(b))*x(i+1:length(b)))/A(i,i);
  endfor
endfunction
