function fib=fibo(n)

if n==0
       fib=0;
elseif n==1
       fib=1;
else 
       fib=fibo(n-1)+fibo(n-2);
end
