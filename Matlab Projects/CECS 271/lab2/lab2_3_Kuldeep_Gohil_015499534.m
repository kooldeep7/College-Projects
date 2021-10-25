%{ 
Name: Lab 2, Problem 7.8
Date:2/20/2020
Class: CECS 271
Instructor: Minthong Nguyen
Purpose: Write a recursive Fibonnaci sequence function to compute F0 to F20
Last updated: 2/20/2020
%}

%loops 20 times 
for k = 0:20 
    
 %printing the sequence 
    fprintf('%d:%5d\n', k, fibseq(k)); 
end

function y = fibseq(n)

%if n = 0 or n = 1, start at 1 
    if(n == 0 || n == 1)
        y = 1; 
    else
        y = fibseq(n - 1) + fibseq(n - 2);
        
%recursive, will repeat n times 
    end 
end 

%{
Command Window: 
0:    1
1:    1
2:    2
3:    3
4:    5
5:    8
6:   13
7:   21
8:   34
9:   55
10:   89
11:  144
12:  233
13:  377
14:  610
15:  987
16: 1597
17: 2584
18: 4181
19: 6765
20:10946
%}
    
