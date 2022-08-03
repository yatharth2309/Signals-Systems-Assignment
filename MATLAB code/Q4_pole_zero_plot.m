num = [6 1 8];
den = [8 1 6];
[zeros,poles] = tf2zp(num,den);
pzmap(poles, zeros)
title('Pole - Zero Plot', 'Fontweight', 'Bold')
x=real(roots(num));
y=imag(roots(num));
w=real(roots(den));
z=imag(roots(den));
xlim([-1.5 1.5])
ylim([-3 3])
for i=1:length(x)
    text(x(i)+0.05,y(i)-0.05,['(', num2str(x(i)), ',', num2str(y(i)), ')'])
    text(w(i)+0.05,z(i)-0.05,['(', num2str(w(i)), ',', num2str(z(i)), ')'])
end