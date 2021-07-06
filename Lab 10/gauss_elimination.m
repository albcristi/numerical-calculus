function x = gauss_elimination(A, b)
  n = length(b);
  A = [A, b];
  for k=1:n-1
    % find the pivot
    % maximum value of abs
    [value, position] = max(abs(A(k:end, k)));
    position = k+position-1;
    if k!=position
       A([k,position], k:end) = A([position, k], k:end);
    endif
    for j=k+1:n
      m = A(j,k) / A(k,k);
      A(j,k:end) = A(j,k:end)-m*A(k, k:end);
    endfor
  endfor
  b = A(:, end);
  A(:, end) = [];
  x = backwards_substitution(A,  b);
endfunction