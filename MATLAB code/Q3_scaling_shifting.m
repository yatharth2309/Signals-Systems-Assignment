fc=1618;
Fs=400000;
b=8;
b=b*0.001;
L=0.01.*Fs +1;
t=0:1/Fs:0.01;
x=5.*sin(2.*pi.*fc.*t);
for i=1:L
    if t(i)>0.005
        x(i)=0;
    end
end
subplot(4,1,1);
plot(t,x);
title('x(t) vs t');
xlabel('t');
ylabel('x(t)');
axis([-0.01 0.01 -5 5]);


t=t-b;
subplot(4,1,2);
plot(t,x);
title('x(t+b) vs t');
xlabel('t');
ylabel('Amplitude(V)');
axis([-0.01 0.01 -5 5]);

t=-3/2.*t;
subplot(4,1,3);
plot(t,x);
title('x(-2/3t+b) vs t');
xlabel('t');
ylabel('Amplitude(V)');
axis([-0.01 0.01 -5 5]);