%{
Name: Lab 1, Problem 2.19
Date:2/4/2020
Class: CECS 271
Instructor: Minthong Nguyen
Purpose: vector notation for for loop
Last updated: 2/4/2020
%}

n = input("Number of terms? ");
k = 1:n;
s = 1./ (k.^2);
disp(sqrt(6 * sum(s)));   %printing it to command window

%{ 
 k = n
 n = 1     s(1)     = 2.4495
 n = 2     s(2)     = 2.7386
 n = 3     s(3)     = 2.8577
 n = 4     s(4)     = 2.9226
 n = 5     s(5)     = 2.9634
 n = 500   s(500)   = 3.1397
 n = 1000  s(1000)  = 3.1406   becomes stable for 2 decimal points
 n = 1500  s(1500)  = 3.1410    
%}
 
