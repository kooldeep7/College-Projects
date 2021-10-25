%{
Name: Lab 1, Problem 4.8
Date:2/4/2020
Class: CECS 271
Instructor: Minthong Nguyen
Purpose: graph deflection
Last updated: 2/4/2020
%} 

L = 10;      %beam
T = 1000;    %tension
W = 100;     %load
EI = 1E4;    %EI

%calculation
a = sqrt(T / EI);   
x = 0:0.01:L;
y = W * EI / (T * T)*...
    (cosh(a * (L / 2 - x))./cosh(a * L/2) - 1)+...
    W * x.*(L - x)/ (2 * T);

%values
xmin = -2;       
ymin = -5;
xmax = 15;
ymax = 1;

%plotting the values on graph
plot(x, y, 'p');
axis([xmin xmax ymin ymax]);   
    
