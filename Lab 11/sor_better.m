function [Xnew, iterations, rho] = sor_better(A,b,omega, er=1e-10)
    M = diag(diag(A)+tril(A,-1));
  N = M-A;
  c = M\b;
  T = M\N;
  rho = max(abs(eig(T));
  Xold = zeros(size(b));
  max_no_iterations = 1000;
  iterations = 1;
  while iterations<max_no_iterations
    if (norm(T, Inf) /( 1-norm(T,Inf)))*norm(Xnew-Xold, Inf) < er
      return
    endif
    Xnew = c + T*Xold;
    Xold = Xnew;
    iterations += 1;
  endwhile
endfunction