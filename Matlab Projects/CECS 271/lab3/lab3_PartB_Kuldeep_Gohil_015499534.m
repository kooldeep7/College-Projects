%{ 
Name: Kuldeep Gohil
Date: 03/26/2020 
Class: CECS 271
Instructor: Minhthong Nguyen
Purpose: Implemented Bisection, Newton-Raphson, and Secant Methods for the
equation f(x) = cos(x) - 3x. Found the root, vector of values of function 
at each approximating value x, and vector of approximating values for all 
three methods. For Bisection Method, instead of vector of values of
function, found the vector of relative approximating errors. 
Last updated: 03/26/2020
%}

%Part B

clc
syms m;                     % symbolic variable m 

fx = cos(m) - 3*m;          %the equation fx 
dfx = diff(fx);             %getting the derivative of fx 

[rootB,errB,xB] = bisec(fx,0,10,0.05,25);           %Bisection Method
[rootN,fxN,xN] = newraph(fx, diff(fx),5,0.05,100);  %Newton-Raphson Method
[rootS,fxS,xS] = secant(fx, 5,6,0.05,100);          %Secant Method

eqn = fx == 0; 
trueVal = vpasolve(eqn,m); %calculates true root values


%Printing and creating true error table
%header
methods = ["Bisection"," Newton Raphson", "Secant"];

%array
roots = [rootB, rootN, rootS];

%The values for the methods
fprintf('\n%22s = %0.8f\n', "True Value",trueVal);
fprintf('\n%s%19s%24s%15s\n', "Method:", methods);
fprintf('%s      %3.8f     %13.8f  %19.8f\n',"Best Approx:", roots);

%Calculates true errors in for loop
for k = 1:3
    trueError(k) = abs(((trueVal-roots(k))/trueVal)*100);
end

%displays the true error of each method
fprintf('%s       %3.8f%%    %13.8f%% %19.8f%%\n', "True Error:", trueError);

%Bisection Method
function[root, err, x] = bisec(f, a, b, tol, maxIter)
    xl = a; %lower bound
    xu = b; %upper bound
    syms m; %symbolic variable to calculate f(x)
    
    %variable for table header
    header = ["Iteration", "Xl","Xu","Xm","Ea"];
    
    %prints bisection method and header
    fprintf('%37s\n', "Bisection Method");
    fprintf('%s%10s%10s%10s%10s\n', header);

    check = vpa(subs(f,m,xl))*vpa(subs(f,m,xu));
    
       if check < 0
           xm = (xl + xu)/2;%Bisection method, xm is the middle point between xl and xu
           
            %displays the three values
            fprintf('%s%20.5f%10.5f%10.5f\n'," 1",xl,xu,xm);
           
           %for loop iterates maximum number of times
           for i = 1:maxIter
               x(i) = xm;   % adds xm to array of possible roots
               check = vpa(subs(f,m,xl))*vpa(subs(f,m,xm));
            
               if check < 0
                   xu = xm;
               elseif check > 0
                   xl = xm;
               else
                   root = xi;
                   break
               end
               oldxm = xm; %current xm assigned to oldxm variable
               xm = (xl + xu)/2; %new xm 
               Ea = abs((xm - oldxm)/xm)*100; 
               
               %error calculation: (new xm - old xm)/new * 100 %
               
               %displays all the values for each iteration
               fprintf('%2d%20.5f%10.5f%10.5f%13.5f%%\n',i+1,xl,xu,xm,Ea);
               err(i) = Ea;
               if Ea <= tol
                   
                   %loop ends if the value is <= the tolerance
                   root = xm; % root found
                   break;
               end
           end
       
       end

end

% Newton-Raphson Method
function [root,fx,x] = newraph(f,df,x0,tol,maxIter)
    syms m; %symbolic variable
    
    %displays table for the method
    header = ["Iteration", "Xi","f(x)","Ea"];
    fprintf('\n%37s\n', "Newton Raphson Method");
    fprintf('%s%10s%10s%10s\n', header);
    
    
    % For loop iterates until root is found
    for i = 1:maxIter
        x(i) = x0;                  %initial value for x vector
        fx(i) = vpa(subs(f,m,x0));  %calculates f(x) with current value
        fdx(i) = vpa(subs(df,m,x0));%calculates f'(x) with current value
        xi = x0 - (fx(i)/fdx(i));  
        Ea = (abs((xi-x0)/xi)*100); %calculates relative error
        
        %displays each iteration values
        fprintf('%2d%20.5f%10.5f%10.5f%%\n',i,xi,fx(i),Ea);
        if  Ea <= tol
            root = xi;
            break;
        else
            x0 = xi;
        end
        
    end
end


% Secant Method
function [root,fx,x] = secant(f,x0,x1,tol, maxIter)
    syms m; %symbolic variable
    
    %displays table for Secant Method
    header = ["Iteration", "Xi-1","Xi","Xi+1","Ea","f(xi+1)"];
    fprintf('\n%37s\n', "Secant Method");
    fprintf('%s%10s%10s%10s%13s%14s\n', header);
    
    %for loop iterates until error is less than tolerance and root is found
    for i = 1:maxIter
        fx0 = vpa(subs(f,m,x0));
        fx(i) = vpa(subs(f,m,x1));
        xi = x1- ((fx(i) *(x1-x0))/ (fx(i)-fx0));
        fxi = vpa(subs(f,m,xi));
        Ea = abs((xi-x1)/xi)*100; %calculates relative error
        
        %displays iteration values
        fprintf('%2d%18.5f%10.5f%10.5f%15.5f%% %10.5f\n',i,x0,x1,xi,Ea,fxi);
        if Ea <= tol
            root = xi;
            break
        end
        x(i) = xi;
        x0 = x1;
        x1 = xi;
    end

end

%{
Command Window Results

                     Bisection Method
Iteration        Xl        Xu        Xm        Ea
 1             0.00000  10.00000   5.00000
 2             0.00000   5.00000   2.50000    100.00000%
 3             0.00000   2.50000   1.25000    100.00000%
 4             0.00000   1.25000   0.62500    100.00000%
 5             0.00000   0.62500   0.31250    100.00000%
 6             0.31250   0.62500   0.46875     33.33333%
 7             0.31250   0.46875   0.39063     20.00000%
 8             0.31250   0.39063   0.35156     11.11111%
 9             0.31250   0.35156   0.33203      5.88235%
10             0.31250   0.33203   0.32227      3.03030%
11             0.31250   0.32227   0.31738      1.53846%
12             0.31250   0.31738   0.31494      0.77519%
13             0.31494   0.31738   0.31616      0.38610%
14             0.31616   0.31738   0.31677      0.19268%
15             0.31616   0.31677   0.31647      0.09643%
16             0.31647   0.31677   0.31662      0.04819%

                Newton Raphson Method
Iteration        Xi      f(x)        Ea
 1            -2.21009 -14.71634 326.23522%
 2             0.53562   6.03364 512.62514%
 3             0.32285  -0.74690  65.90351%
 4             0.31676  -0.02021   1.92330%
 5             0.31675  -0.00002   0.00168%

                        Secant Method
Iteration      Xi-1        Xi      Xi+1           Ea       f(xi+1)
 1           5.00000   6.00000  -1.33372      549.87089%    4.23601
 2           6.00000  -1.33372   0.12642     1154.95043%    0.61275
 3          -1.33372   0.12642   0.37335       66.13823%   -0.18896
 4           0.12642   0.37335   0.31516       18.46703%    0.00528
 5           0.37335   0.31516   0.31674        0.49979%    0.00004
 6           0.31516   0.31674   0.31675        0.00404%   -0.00000

            True Value = 0.31675083

Method:          Bisection          Newton Raphson         Secant
Best Approx:      0.31661987        0.31675083           0.31675083
True Error:       0.04134345%       0.00000000%          0.00000092%

}%