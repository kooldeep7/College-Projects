%{
Name: Lab 1, Problem 2.23
Date:2/4/2020
Class: CECS 271
Instructor: Minthong Nguyen
Purpose: Each month balance for 12 months (1 year)
Last updated: 2/4/2020
%}

Monthly = 50;    
Months = [1:12];
Balance = 0;

disp('    MONTH   MONTH BALANCE')  %header for command window

%for loop
for k = 1:length(Months) 
    
  Balance = (Balance + (Monthly))*1.01;
  disp([Months(k),Balance]) %printing it to command window
  
end

%{
          MONTH      MONTH BALANCE
          1.00         50.50

          2.00        101.50

          3.00        153.02

          4.00        205.05

          5.00        257.60

          6.00        310.68

          7.00        364.28

          8.00        418.43

          9.00        473.11

         10.00        528.34

         11.00        584.13

         12.00        640.47
%}
