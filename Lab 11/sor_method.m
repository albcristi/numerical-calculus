function Xnew = sor_method(A,b,no_iterations, omega)
  Xold = zeros(size(b));
  Xnew = Xold;
  for k=1:no_iterations
    for i=1:length(b)
      Xnew(i) = omega/A(i,i) * (b(i)-A(i,1:i-1)*Xnew(1:i-1)...
      - A(i,i+1:end)*Xold(i+1:end))+(1-omega)*Xold(i);
    endfor
    Xold = Xnew;
  endfor
endfunction