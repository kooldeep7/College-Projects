%{ 
Name: Lab 2, Problem 7.6
Date:2/20/2020
Class: CECS 271
Instructor: Minthong Nguyen
Purpose: Write a function to compute ?(x) and write out its values
Last updated: 2/20/2020
%}

%range between 0 - 4 with .1 incriment
x = 0:.1:4; 

%initialize a
a = 0.4361836;

%initialize b
b = -0.1201676;

%initialize c 
c = 0.937298;

%initialize r 
r = exp((-0.5 .* x.^2)) / (sqrt(2*pi));

%initialize t 
t = 1./(1 + 0.3326 .* x);

%? equation
phi_x = 0.5 - r .* ((a .* t) + (b .* t.^2) + (c .* t.^3)); 

%display 
disp(phi_x)

%{
Command Window: 
Columns 1 through 13

    0.0000    0.0398    0.0793    0.1179    0.1554    0.1914    0.2257    0.2580    0.2881    0.3159    0.3413    0.3643    0.3849

  Columns 14 through 26

    0.4032    0.4192    0.4332    0.4452    0.4554    0.4641    0.4713    0.4772    0.4821    0.4861    0.4893    0.4918    0.4938

  Columns 27 through 39

    0.4953    0.4965    0.4974    0.4981    0.4986    0.4990    0.4993    0.4995    0.4997    0.4998    0.4998    0.4999    0.4999

  Columns 40 through 41

    0.5000    0.5000

%}


