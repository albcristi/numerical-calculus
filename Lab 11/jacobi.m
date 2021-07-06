function Xnew = jacobi(A, b, no_iterations)
  Xold = zeros(size(b));
  Xnew = Xold;
  for k=1:no_iterations
    for i=1:length(b)
      Xnew(i) = 1/A(i,i) * (b(i)-A(i,1:i-1)*Xold(1:i-1)...
      - A(i,i+1:end)*Xold(i+1:end));
    endfor
    Xold = Xnew;
  endfor
endfunction