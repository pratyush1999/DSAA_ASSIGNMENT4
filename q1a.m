n=8;
ind = 0 : n-1;
[X1 Y1] = meshgrid(ind, ind);
h =cos(pi/(2*n) *Y1.*(2*X1+1));
h(1,:)=h(1,:)*sqrt(1/n);
h(2:end,:)=h(2:end, :)*sqrt(2/n);
h
dctmtx(8)