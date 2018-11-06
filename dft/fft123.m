clear ; close all; clc


[x3,freq1] = wavread('um.wav');
time=(1:length(x3))/freq1;
period1 = 1/freq1;
num_tsteps = length(x3);
num_periods = num_tsteps;

%adding sine wave%
sin1 = transpose(0.5*sin(2*pi*2000*time));
sin1 = sin1 + transpose(0.5 * rand(1,num_tsteps));
plot(time,sin1);
figure
x3 = x3+sin1;
%

plot(time,x3)
figure

%n = num_tsteps;
n = 2**16;
f_s = num_tsteps / (period1*num_periods);

y = fft(x3, n);
%y = fftshift(y);
y = (1/(2*num_tsteps))*abs(y);
y1 = y(1:n/2+1);
y1(2:end-1) = 2*y1(2:end-1);
f = f_s*(0:n/2)/n;
%f = f_s*(-num_tsteps/2:num_tsteps/2-1)/num_tsteps;
subplot(2,1,1)
plot(f,y1);
subplot(2,1,2)
plot(f,10*log(y1));
axis([0, 7000]);

#pause;