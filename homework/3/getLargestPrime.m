function getLargestPrime(n)

if (n<1)
    disp('Please enter a non-negative number')
    return
end

for n = n:-1:1
    if isprime(n)
        disp(n);
        break
    end
end

    