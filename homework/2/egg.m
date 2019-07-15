M=63;clc

rho=1.038;
c=3.7;
K=5.4*10^-3;
Tw=100;
Ty=70;

T0=4;
t = (M^(2/3)*c*rho^(1/3))/(K*pi^2*(4*pi/3)^(2/3))*log(0.76*((T0-Tw)/(Ty-Tw)));
disp(['Time for large egg to boil taken from fridge = ' num2str(t) ' seconds']);

T0=20;
t = (M^(2/3)*c*rho^(1/3))/(K*pi^2*(4*pi/3)^(2/3))*log(0.76*((T0-Tw)/(Ty-Tw)));
disp(['Time for large egg to boil taken from room temperature = ',num2str(t) ' seconds']);
