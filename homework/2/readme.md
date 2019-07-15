#Shashank Kumbhare (Homework 2)

(1)
>> a=1

a =

     1
explanation: integer value of 1 has been assigned to variable a 

>> b = 'x'

b =

    'x'
explanation: character value of 'x' has been assigned to variable 'b'

>> c=true

c =

  logical

   1 has been assigned to variable 'c'

explanation: logical value of 1
>> whos a b c
  Name      Size            Bytes  Class      Attributes

  a         1x1                 8  double               
  b         1x1                 2  char                 
  c         1x1                 1  logical 
explanation: whos lists the variables a,b,c and their sizes and types. It also reports the totals for sizes.

>> a==c

ans =

  logical

   1
explanation: a==c returns a logical value 1 (true) if value in a equals to value in c; otherwise, logical 0 (false)

>> a+c

ans =

     2
explanation: a+c adds value in a and c

>> d=[1 2 3 4]

d =

     1     2     3     4
explanation: it creats a row vector

>> e = ['a' 'b' 'c' 'd']

e =

    'abcd'
explanation: matlab combines different character as a single word and makes a single element vector

>> f = ['a','b','c','d']

f =

    'abcd'
explnation: same as above; ',' makes no difference

>> g=['abcd']

g =

    'abcd'
explanation: vector with single character type element

>> h = {'a' 'b' 'c' 'd'}

h =

  1×4 cell array

    {'a'}    {'b'}    {'c'}    {'d'}
explanation: it creates an cell array; but unlike regular arrays cell elements do not need to be all of the same type

>> i = { a b c d}

i =

  1×4 cell array

    {[1]}    {'x'}    {[1]}    {1×4 double}
explanation: it creates an array and the elements are the values of a, b, c, d which we have assigned before

>> whos d e f g h i
  Name      Size            Bytes  Class     Attributes

  d         1x4                32  double              
  e         1x4                 8  char                
  f         1x4                 8  char                
  g         1x4                 8  char                
  h         1x4               456  cell                
  i         1x4               491  cell  
explanation: whos lists the variables d, e, f, g, h, i and their sizes and types. It also reports the totals for sizes.

>> class(a)

ans =

    'double'
explanation: this function gives the data type

>> type(a)
Error using type
Arguments must be character vectors or strings
explnation: this function doesn't work in matlab, it is for python

>> True
Undefined function or variable 'True'.

Did you mean:
>> true

ans =

  logical

   1
   
explantion: 'true' is a key word for logical 1. But it is case sensitive so 'True' will not work

>> False
Undefined function or variable 'False'.
 
Did you mean:
>> false

ans =

  logical

   0
explantion: 'false' is a key word for logical 1. But it is case sensitive so 'False' will not work



(2)
Answer: For a signed variable, a negative value too large to fit would become a large positive value. An unsigned variable that exceeds its capacity would become a small positive value, or zero.

>> intmin('int16')

ans =

  int16

   -32768

>> intmax('int16')

ans =

  int16

   32767

>> intmin('int32')

ans =

  int32

   -2147483648

>> intmax('int32')

ans =

  int32

   2147483647
 
 
 
(3)
>> 1\2

ans =

     2

>> 1/2

ans =

    0.5000
explanation: \ is for right division and / is for left division

>> int8(1/2)

ans =

  int8

   1

>> int8(1/3)

ans =

  int8

   0
explanation: int8() converts the value to integer of type int8
If the number being converted to an integer has a fractional part, matlab rounds to the nearest integer. If the fractional part is exactly 0.5, matlab chooses the one for which the absolute value is larger in magnitude

>> -5^2

ans =

   -25

>> -5**2
 -5**2
    ↑
Error: Invalid use of operator.
 
>> (-5) ^ 2

ans =

    25

>> (-5) ** 2
 (-5) ** 2
       ↑
Error: Invalid use of operator.
explanation: ^ is used to raise the power in matlab. ** doesn't work in matlab. If paranthesis is not given it only raises the immediate number before it and not any thing before; in our case the '-' sign

>> 10-6/2

ans =

     7

>> 5*4/2*3

ans =

    30
explanation: here matlab is folloowing the operator precedence



(4)
>> x=[2,2,2]

x =

     2     2     2

>> a=diag(x)

a =

     2     0     0
     0     2     0
     0     0     2

>> a=2*eye(3,3)

a =

     2     0     0
     0     2     0
     0     0     2
	 
>> x = zeros(3,3)

x =

     0     0     0
     0     0     0
     0     0     0


>> for i=1:3
x(i,i) = 2

end

x =

     2     0     0
     0     0     0
     0     0     0


x =

     2     0     0
     0     2     0
     0     0     0


x =

     2     0     0
     0     2     0
     0     0     2



(5)
Here is the link to my script_full_of_errors_fixed.m code

[**script_full_of_errors_fixed**:](script_full_of_errors_fixed.m)

	 
(7)
>> mkdir mynewdir
>> cd mynewdir
>> edit myscript.m
>> myscript

click [here](sine.png) for the output














