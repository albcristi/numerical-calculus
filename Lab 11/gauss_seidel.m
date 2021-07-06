function Xnew = gauss_seidel(A, b, no_iterations)
  Xnew = zeros(size(b));
  for k=1:no_iterations
    for i=1:length(b)
      Xnew(i) = 1/A(i,i) * (b(i)-A(i,1:i-1)*Xnew(1:i-1)...
      - A(i,i+1:end)*Xnew(i+1:end));
    endfor
  endfor
endfunction