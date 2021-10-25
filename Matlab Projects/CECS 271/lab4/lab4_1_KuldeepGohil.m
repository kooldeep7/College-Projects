%4.1

clear all;
clc
xori = -2: 0.01 : 2;
yori = 1./(xori.^2+1);
plot(xori,yori, 'blue')
hold on
x = -2 : 1 : 2;
y = 1./(x.^2+1);
plot (x,y, 'redo')
[a] = NewtonInter(x , y);


xi = xori;

val = NewtonInterEval(x , y , xi);
plot(xi, val, 'green')
hold off

function [a] = NewtonInter(X, Y)
    if nargin ~= 2
        error('divdiff: invalid input parameters'); 
    end
    [ p, m ] = size(X); % m points, polynomial order <= m-1
    TDD = zeros(m, m);
    TDD(:, 1) = Y';
    %Create an algorithm to solve Newtons Divided Difference Method
    for j = 2 : m
        for i = 1 : (m - j + 1)
            TDD(i,j) = (TDD(i + 1, j - 1) - TDD(i, j - 1)) / (X(i + j - 1) - X(i));
        end
    for i = 1 : length(TDD)
        a(i) = TDD(1 , i );
    end
    end 
end

function [val] = NewtonInterEval(X, Y , xi)
    [ p, m ] = size(X); % m points, polynomial order <= m-1
    TDD = zeros(m, m);
    TDD(:, 1) = Y';
    %Create an algorithm to solve Newtons Divided Difference Method
    for j = 2 : m
        for i = 1 : (m - j + 1)
            TDD(i,j) = (TDD(i + 1, j - 1) - TDD(i, j - 1)) / (X(i + j - 1) - X(i));
        end
    for i = 1 : length(TDD)
        a(i) = TDD(1 , i );
    end
    end
    val = a(1) + a(2) * (xi - X(1)) + a(3) * (xi-X(1)) .* (xi-X(2)) + (a(4)) *(xi-X(1)) .* (xi-X(2)) .* (xi-X(3)) + (a(5)) *(xi-X(1)) .* (xi-X(2)) .* (xi-X(3)) .* (xi - X(4));
end


