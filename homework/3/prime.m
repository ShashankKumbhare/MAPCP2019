function prime(n)

if (n==0) || (n==1)
    result=false;
elseif (n==2)
    result=true;
else
    result=modulus(n,2);
end

disp(string(result));
