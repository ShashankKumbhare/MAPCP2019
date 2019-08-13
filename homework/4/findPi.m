function piVal=findPi(ntotal)

%ntotal=10000;
x=rand(1,ntotal);
y=rand(1,ntotal);
dist=sqrt(x.^2+y.^2);

nc=0;
for i=1:ntotal
    if dist(i)<=1
        nc=nc+1;
    end
end
piVal=4*nc/ntotal;

