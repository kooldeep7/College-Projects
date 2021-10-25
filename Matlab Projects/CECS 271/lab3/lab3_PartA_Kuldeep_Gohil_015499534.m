%{ 
Name: Kuldeep Gohil
Date: 03/26/2020 
Class: CECS 271
Instructor: Minhthong Nguyen
Purpose: To approximate f'(pi/8) using forward, backward, and central 
differences on the equation f(x) = x * cos*x) - sin(x)/x. Also to see the 
relationship between each step size and relative approximating error. 
Last updated: 03/26/2020
%}

%Part A

fx = @(x) (x .* cos(x)) - sin(x)/x;
dx = @(x) (-x) * (sin(x)) + (sin(x)/x^2) - (cos(x)/x) + cos(x);

%defining the variables for the equation

h = {0.2 0.02 0.002 0.0002 0.00002 0.000002 0.0000002};
step = [0.2 0.02 0.002 0.0002 0.00002 0.000002 0.0000002];
for_dif = [];
back_dif = [];
cent_dif = [];
error_for_dif = [];
error_back_dif = [];
error_cent_dif = [];
N = [1:7];

%Approximating fx(pi/8) using forwards, backwards, and central methods 

%loop 
for i = 1:length(h)
    for_dif(i) = (fx(pi/8 + h{i}) - fx(pi/8))/ h{i};
    back_dif(i) = (fx(pi/8) - fx(pi/8 - h{i}))/ h{i};
    cent_dif(i) = (fx(pi/8 + h{i}) - fx(pi/8 - h{i})) / (2 * h{i}); 
end

%loop to calculate the relative approximate error of each iteration
for p = 1:length(for_dif) - 1
    
   
    %multiplying by 100 to get relative approximate error as a percent 
    error_for_dif(p) = ((for_dif(p + 1) - for_dif( p)) / for_dif(p + 1)) * 100 ;
    error_back_dif(p) = ((back_dif(p + 1) - back_dif( p)) / back_dif(p + 1)) * 100;
    error_cent_dif(p) = ((cent_dif(p + 1) - cent_dif( p)) / cent_dif(p + 1)) * 100;
end

% Append zero in fron of each error approx, since there is no value in the
% first index
error_for_dif = [ 0 error_for_dif];
%Absolute values for backwards difference because it gives negative values
%each iteration
error_back_dif = [0 abs(error_back_dif)];
error_cent_dif = [0 error_cent_dif];

%Calculating actual value at f(pi/8) 
true_value = dx(pi/8);
data_for = [ N' step' for_dif' error_for_dif'];
data_back = [N' step' back_dif' error_back_dif'];
data_cent = [N' step' cent_dif' error_cent_dif'];

%Printing Forward Difference Method
fprintf('-----------------------FORWARD DIFFERENCE METHOD-----------------------\n')
fprintf("                       Approximating f'(pi/8)                           \n")
fprintf('%15s%10s%20s%25s\n',  'Iteration #', 'Step Size', 'Approximate Value', 'Relative Approx Error')
fprintf('%10d%15.8f%15.8f%23.8f%%\n ' , data_for')

fprintf('\n')
fprintf('\n')

%Printing Backward Difference Method
fprintf('-----------------------BACKWARD DIFFERENCE METHOD-----------------------\n')
fprintf("                       Approximating f'(pi/8)                           \n")
fprintf('%15s%10s%20s%25s\n',  'Iteration #', 'Step Size', 'Approximate Value', 'Relative Approx Error')
fprintf('%10d%15.8f%15.8f%23.8f%%\n ' , data_back')

fprintf('\n')
fprintf('\n')

%Printing Central Difference Method
fprintf('-----------------------CENTRAL DIFFERENCE METHOD-----------------------\n')
fprintf("                       Approximating f'(pi/8)                           \n")
fprintf('%15s%10s%20s%25s\n',  'Iteration #', 'Step Size', 'Approximate Value', 'Relative Approx Error')
fprintf('%10d%15.8f%15.8f%23.8f%%\n ' , data_cent')

for_dif_final = for_dif(7) - true_value;
back_dif_final = back_dif(7) - true_value;
cent_dif_final = cent_dif(7) - true_value;

fprintf('\n')
fprintf('\n')

%Printing the comparison of approximation to true values 
fprintf('--------------------COMPARING APPROXIMATION TO TRUE VALUES--------------------\n')
fprintf('%20s%45s%20s%40s\n',  'Aproximation Method', 'Approximated Value using h = 0.0000002', 'Actual Value', 'Difference of Actual and Approx')
fprintf('%20s%25.15f%45.15f%25.15f\n' , 'Forwards Difference' , for_dif(7) , true_value , abs(for_dif_final))
fprintf('%20s%25.15f%45.15f%25.15f\n' , 'Backwards Difference' , back_dif(7) , true_value , abs(back_dif_final))
fprintf('%20s%25.15f%45.15f%25.15f\n' , 'Central Difference' , cent_dif(7) , true_value , abs(cent_dif_final))

%{
Command Window Results

-----------------------FORWARD DIFFERENCE METHOD-----------------------
                       Approximating f'(pi/8)                           
    Iteration # Step Size   Approximate Value    Relative Approx Error
         1     0.20000000     0.80411770             0.00000000%
          2     0.02000000     0.89421171            10.07524479%
          3     0.00200000     0.90168032             0.82829900%
          4     0.00020000     0.90241121             0.08099288%
          5     0.00002000     0.90248414             0.00808088%
          6     0.00000200     0.90249143             0.00080790%
          7     0.00000020     0.90249216             0.00008082%
 

-----------------------BACKWARD DIFFERENCE METHOD-----------------------
                       Approximating f'(pi/8)                           
    Iteration # Step Size   Approximate Value    Relative Approx Error
         1     0.20000000     0.96500773             0.00000000%
          2     0.02000000     0.91041299             5.99670059%
          3     0.00200000     0.90330056             0.78738174%
          4     0.00020000     0.90257324             0.08058369%
          5     0.00002000     0.90250034             0.00807679%
          6     0.00000200     0.90249305             0.00080786%
          7     0.00000020     0.90249232             0.00008081%
 

-----------------------CENTRAL DIFFERENCE METHOD-----------------------
                       Approximating f'(pi/8)                           
    Iteration # Step Size   Approximate Value    Relative Approx Error
         1     0.20000000     0.88456271             0.00000000%
          2     0.02000000     0.90231235             1.96712802%
          3     0.00200000     0.90249044             0.01973347%
          4     0.00020000     0.90249222             0.00019734%
          5     0.00002000     0.90249224             0.00000197%
          6     0.00000200     0.90249224             0.00000002%
          7     0.00000020     0.90249224             0.00000001%
 

--------------------COMPARING APPROXIMATION TO TRUE VALUES--------------------
 Aproximation Method       Approximated Value using h = 0.0000002        Actual Value         Difference of Actual and Approx
 Forwards Difference        0.902492161558577                            0.902492242273367        0.000000080714790
Backwards Difference        0.902492323096027                            0.902492242273367        0.000000080822660
  Central Difference        0.902492242327302                            0.902492242273367        0.000000000053935
  
  %}



