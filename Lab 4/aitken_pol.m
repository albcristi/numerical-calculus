function result = aitken_pol(nodes, values, X, err)
  %arange nodes, values based on distance to X
  [result, Idx] = sort(abs(nodes-X));
  nodes = nodes(Idx);
  values = values(Idx);
  %form table
  ak_table = zeros(length(nodes), length(nodes));
  %put values on first column
  ak_table(:, 1) = values';
  for i=2:length(nodes)
    for j=1:i-1
      ak_table(i, j+1) = (ak_table(j,j)*(nodes(i)-X) - ak_table(i,j)*(nodes(j)-X))/(nodes(i)-nodes(j));
    endfor
    if abs(ak_table(i,i) - ak_table(i-1,i-1)) <= err
      result = ak_table(i,i);
      return;
    endif
  endfor
  result = ak_table(length(nodes), length(nodes));
 endfunction