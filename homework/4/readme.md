# Shashank Kumbhare (Homework 4)  
  
(4)  
  
click [**here(readDSSP.m)**](readDSSP.m) for the main readDSSP.m  
  
Output:  
  
click [**here(readDSSP_output.txt)**](readDSSP_output.txt) for the output text file readDSSP_output.txt  
  
  
(9)  
  
click [**here(findPi.m)**](findPi.m) for the script findPi.m  
  
Output:  
  
   >> findPi(1000)
   ans =
      3.140000000000000
   
click [**here(piPlot.m)**](piPlot.m) for the script piPlot.m
  
Output:

<p align="center">
<img src=pi.png width="80%">  
</p>




click [**here(fib.m)**](fib.m) for the main script fib.m  
click [**here(fibo.m)**](fibo.m)) for the script fibo.m  

Output:  

>> fib('shashank')  
The input argument shashank is not a non-negative integer!  
Please enter a non-negative integer: -123  
The input argument -123 is not a non-negative integer!  
Please enter a non-negative integer: 12.4  
The input argument 12.4 is not a non-negative integer!  
Please enter a non-negative integer: 0  
Fib(0)=0  
Please enter another non-negative integer or type stop: 1  
Fib(1)=1  
Please enter another non-negative integer or type stop: 2  
Fib(2)=1  
Please enter another non-negative integer or type stop: 3  
Fib(3)=2  
Please enter another non-negative integer or type stop: 4  
Fib(4)=3  
Please enter another non-negative integer or type stop: 5  
Fib(5)=5  
Please enter another non-negative integer or type stop: 6  
Fib(6)=8  
Please enter another non-negative integer or type stop: 7  
Fib(7)=13  
Please enter another non-negative integer or type stop: 8  
Fib(8)=21  
Please enter another non-negative integer or type stop: 9  
Fib(9)=34  
Please enter another non-negative integer or type stop: 10  
Fib(10)=55  
Please enter another non-negative integer or type stop: 11  
Fib(11)=89  
Please enter another non-negative integer or type stop: 12  
Fib(12)=144  
Please enter another non-negative integer or type stop: 'stop'  


(4)

function area=get_triangle_area(x)  
  
area=1/2*abs(x(3)*x(6)-x(5)*x(4)-x(1)*x(6)+x(5)*x(2)+x(1)*x(4)-x(3)*x(2));  
  
end  
  
  
click [**here(get_triangle_area.m)**](get_triangle_area.m) for the main script get_triangle_area.m  
  
Output:  
  
>> get_triangle_area([0,0,1,0,0,2])  
  
ans =

     1


  
(5)

click [**here(prime.m)**](prime.m) for the main script prime.m  
click [**here(modulus.m)**](modulus.m)) for the script modulus.m  

Output:  

>> prime(0)  
false  
>> prime(1)  
false  
>> prime(2)  
true  
>> prime(3)  
true  
>> prime(4)  
false  
>> prime(5)  
true  
>> prime(6)  
false  
>> prime(7)  
true  
>> prime(8)  
false  
>> prime(9)  
false  
>> prime(10)  
false  
>> prime(11)  
true  
>> prime(12)  
false  
>> prime(13)  
true
    
  
(6)  
  
click [**here(genFunc.m)**](genFunc.m) for the script genFunc.m  
  
Output:  
>> h1=genFunc(1,2,0)

h1 =

  function_handle with value:

    @genFunc/evalFunc

>> h2=genFunc(1,2)

h2 =

  function_handle with value:

    @genFunc/evalFunc

>> h1(7)

ans =

    63

>> h2(7)

ans =

    63  
  
(7)  
  
click [**here(abcdefgh.m)**](abcdefgh.m) for the script abcdefgh.m
    
(9)

In matlab, eps stand for 'Floating-point relative accuracy'.  
eps returns the distance from 1.0 to the next largest floating-point number. eps = 2^(-52), which is roughly 2.22e-16.
So, whenever a number which we are adding gets less than eps(2.22e-16), it will consider it as 0.
In our program, when eps becomes 1.1102e-16 which is less than 2.22e-16, matlab considered it as 0. And that's why 1.0 != 1.0 + eps becomes False.
  
  
  
(10)

click [**here(getLargestPrime.m)**](getLargestPrime.m) for the script getLargestPrime.m


