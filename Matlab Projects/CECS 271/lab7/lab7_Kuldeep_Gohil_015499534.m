%Kuldeep Gohil
%CECS 271 
%Lab 7 


whos x  %initialzing variable 'x'
file = 'mysteriousSound.wav';   %initializing 'file' variable with name of audio file
[x, FS] = audioread(file);      %assigning values of the audio file to 'x' and 'FS'

%Plays the audio file
sound(x, FS);                 

%Computes FFT and assigns it to variable 'valueFFT'
valueFFT = fft(x);             

plot(abs(valueFFT(:,1)))                    %Plots the value
title('FFT Method: mysteriousSound.wav')    %Writes title on graph

%Creates an audio file called 'original.wav' with computed values. 
audiowrite('original.wav', x, FS);         
 


