%{ 
Name: Lab 2, Problem 6.3
Date:2/20/2020
Class: CECS 271
Instructor: Minthong Nguyen
Purpose: Solving the equations using the left division operator
Last updated: 2/20/2020
%}

%{ 
 6.3)Solve the equations
 2x - y + z = 4 
 x + y + z = 3 
 3x - y - z = 1 
%}


%initializing 3x3 matrix 
A = [2 -1 1; 1 1 1; 3 -1 -1];
%transpose B matrix to do left array division 
B = [4, 3, 1]';
%left array division 
solve = (A \ B);
%initializing residual 
residual = A * solve - B;

%pass through A matrix through determinant and rcond functions
d = det(A);
cond = rcond(A);

%display results 
disp(solve)
disp(residual)
disp(d)
disp(cond)

%{
Command Window: 
     1
     0
     2

     0
     0
     0

    -8

    0.1667
%}