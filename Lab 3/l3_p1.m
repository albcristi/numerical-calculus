function l=l3_p1(nodes, values, X)
  #lagrange using the barycentric formula
  l = ones(1,length(X));
  for index=1:length(X)
    A = bary_coeff(nodes);
    pos = find(nodes == X(index));
    if(length(pos)==0)  
      nom = 0;
      denom = 0;
      for i=1:length(nodes)
        nom = nom + A(i)*values(i) /(X(index) -nodes(i));
        denom = denom + A(i) / (X(index)-nodes(i));
      endfor
      l(index)=nom/denom;
     else
      l(index) = values(pos);
    endif
  endfor
endfunction


function A = bary_coeff(nodes)
  A = ones(size(nodes));
  for i=1:length(nodes)
    # method 1
    # A(i) = 1./prod(nodes(i)-nodes(nodes!=nodes(i)));
    # method 2: natural approach
    for j=1:length(nodes)
      if i!=j
        A(i) = A(i)./(nodes(i)-nodes(j));
      endif
    endfor
  endfor
endfunction