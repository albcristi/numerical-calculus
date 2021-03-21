function table=div_diff(nodes, values)
   table = NaN(length(values));
   table(:,1) = values;
   for col=2:length(values)
     table(1:end-col+1,col) ...
     = (table(2:end-col+2,col-1) ...
     -table(1:end-col+1,col-1)) ./ ...
     (nodes(col:end)-nodes(1:end-col+1))';
   endfor
endfunction