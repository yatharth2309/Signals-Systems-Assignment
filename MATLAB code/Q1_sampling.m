N=14;
Fs=3200;
t=0:1/Fs:0.1;
g=200.*sinc(200.*t).*cos(100.*pi.*N.*t);

subplot(2,1,1);
plot(t, g);
title('g(t) vs t');
xlabel('{Time(s)}');
ylabel('{Amplitude}');

n = length(g);
X = fft(g);
Y = fftshift(X);
f = (-n/2:n/2-1)*(Fs/n);
subplot(2,1,2);
plot(f,abs(Y));
title('|G(f)| vs f');
xlabel('Frequency(Hz)');
ylabel('Magnitude');