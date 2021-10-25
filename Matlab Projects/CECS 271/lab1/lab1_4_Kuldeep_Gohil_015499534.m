%{
Name: Lab 1, Problem 5.5
Date:2/4/2020
Class: CECS 271
Instructor: Minthong Nguyen
Purpose: salary averages
Last updated: 2/4/2020
%}

format long g
levels_salary = [12000 15000 18000 24000 35000 50000 70000]; %list of annual salary
payment_employ = [3000 2500 1500 1000 400 100 25];  %employees paid 

%calculation
x = mean(levels_salary);      %mean value
check_above = 1 .* (levels_salary <= x);
check_below = 1 .* (levels_salary >= x);
mult1 = check_above .* payment_employ; %above salary
mult2 = check_below .* payment_employ; %below salary 

total_pay = sum(levels_salary .* payment_employ); 
avg_salary = total_pay / sum(payment_employ); %avg salary
 
%printing values to command window
fprintf('The average salary (mean): %d \n', x);
fprintf('Employees above salary: %d \n', sum(mult1));
fprintf('Employees below salary: %d \n', sum(mult2));
disp('The average salary earned: ')
format bank;
disp(avg_salary)

%{ 
The average salary (mean): 32000 
Employees above salary: 8000 
Employees below salary: 525 
The average salary earned: 
      17038.12
      %}