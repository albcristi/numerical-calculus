%l4 , p4
nodes = [100 121 144 81];
values = sqrt(nodes);
X = 115;
error = 1e-3;
result = aitken_pol(nodes, values, X, error);
disp("Nodes: ");
disp(nodes);
disp("Values:");
disp(values);
disp("Node to aproximate: 115");
disp("Error: 1e-3");
disp("Result");
disp(result);