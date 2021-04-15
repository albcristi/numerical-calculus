nodes = [0 pi/6 pi/4 pi/3 pi/2];
values = [0 1/2 1/sqrt(2) sqrt(3)/2 1];
cp = csape(nodes, values, 'complete', [1 0]);
ppval(cp,[0.1 0.6 0.85 1.25]);
sin([0.1 0.6 0.85 1.25]);


    
clf;
axis equal;axis([0 2 0 1]);
xticks(0:0.2:2);yticks(0:0.2:1);
grid on;hold on;
set(gca,"fontsize", 15)
[x,y]=ginput(1);
X=x;Y=y;
i=1;
while ~isempty([x,y])
plot(x,y,'*k','MarkerSize',10);
text(x+0.02,y+0.02,num2str(i),'fontsize',13);
[x,y]=ginput(1);
i=i+1;
X=[X,x];Y=[Y,y];
endwhile

nodes = linspace(0,1,length(X));
times = linspace(0,1,1001);
sx = ppval(csape(nodes, X, 'variational'), times);
sy = ppval(csape(nodes, Y, 'variational'), times);
plot(sx,sy,'linewidth',2);
