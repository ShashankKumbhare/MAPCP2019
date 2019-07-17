function fib(n)

if isnumeric(n)
    if n<0
        disp(['The input argument ',num2str(n),' is not a non-negative integer!']);
        fib(input('Please enter a non-negative integer: '));
    elseif mod(n,1)~=0
        disp(['The input argument ',num2str(n),' is not a non-negative integer!']);
        fib(input('Please enter a non-negative integer: '));            
    else
    disp(['Fib(',num2str(n),')=',num2str(fibo(n))]);
    fib(input('Please enter another non-negative integer or type stop: '));
    end
elseif ischar(n)
    if n=='stop'
        return
    else
        disp(['The input argument ',n,' is not a non-negative integer!']);
        fib(input('Please enter a non-negative integer: '));
    end
end
