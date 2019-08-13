function piPlot(n)

for i=1:n
    piVal(i)=findPi(i);

end
x=1:n;
semilogx(x,piVal);

