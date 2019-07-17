function result=modulus(n,x)
if mod(n,x)==0
    result=false;
elseif x<round(n/2)
    result = modulus(n,x+1);
else
    result=true;
end
