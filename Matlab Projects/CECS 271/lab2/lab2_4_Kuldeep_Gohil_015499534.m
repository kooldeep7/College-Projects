%{ 
Name: Lab 2, Problem 8.3
Date:2/20/2020
Class: CECS 271
Instructor: Minthong Nguyen
Purpose: Computing pi due to Archimedes 
Last updated: 2/20/2020
%}

%initializing A and N 
A = 1;
N = 6;

%printing labels with spacing for table
fprintf('%10s%17s%20s%20s\n',"x","N","P","E"); 

%for loops, iterates 10 times
for x = 0:10 
    
    %intializing N
    N = 2 * N;
    
    %intializing A
    A = (2 - sqrt(4-A^2)) ^ (1/2);
    
    %intializing L
    L = (N * A) / 2;
    
    %intializing U
    U = L/sqrt((1 - A ^ 2) / 2 );
    
    %intializing P
    P = (U + L) / 2;
    
    %intializing E
    E = (U - L) / 2;
    
    %printing values with specific spacing 
    fprintf('%10d%20f%20f%20f\n',x,N,P,E);
end

    
%{
Command Window: 

         x                N                   P                   E
         0           12.000000            4.119713            1.013885
         1           24.000000            3.860986            0.728357
         2           48.000000            3.808769            0.669419
         3           96.000000            3.796332            0.655300
         4          192.000000            3.793259            0.651806
         5          384.000000            3.792493            0.650935
         6          768.000000            3.792302            0.650718
         7         1536.000000            3.792254            0.650663
         8         3072.000000            3.792242            0.650650
         9         6144.000000            3.792239            0.650646
        10        12288.000000            3.792238            0.650645

%}