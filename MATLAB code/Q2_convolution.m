N=14;
Fs=560;
T=1/Fs;
t=0:1/Fs:0.3;
x=cos(5.*N.*pi.*t)+cos(20.*N.*pi.*t);
h=200.*sinc(200.*t);
y=conv(x,h,'same');

subplot(2,1,1);
plot(t,y);
title('y(t) vs t');
xlabel('Time(t)');
ylabel('Amplitude');

n = length(y);
f = (-n/2:n/2-1)*(Fs/n);
X = fft(y);
Y= fftshift(X);


subplot(2,1,2);
plot(f, abs(Y));
title('|Y(f)| vs f');
xlabel('Frequency(Hz)');
ylabel('Magnitude');

