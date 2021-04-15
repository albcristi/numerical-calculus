function table = div_diff_double_nodes(nodes, values, derivatives)
  n = 2*length(values); 
  table = NaN(n);
  table(:,1) = repelem(values,2); 
  table(1:2:n-1, 2) = derivatives;
  table(2:2:n-2, 2) = diff(values)./diff(nodes);
  %for col=3:n
  %   table(1:end-col+1,col) ...
  %   = (table(2:end-col+2,col-1) ...
  %   -table(1:end-col+1,col-1)) ./ ...
   %  (nodes(col:end)-nodes(1:end-col+1))';
   dnodes = repelem(nodes,2);
   for col = 3:n
     for k=1:n-col+1
       table(k, col) = (table(k+1,col-1)-table(k,col-1))/...
       (dnodes(k+col-1)-dnodes(k));
     endfor
   endfor
endfunction