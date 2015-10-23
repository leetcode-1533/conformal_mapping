x = 0:0.01:5;
y1 = zeros([1,length(x)]);
y2 = x/sqrt(3);

z1 = x + 1i*y1;
z2 = x + 1i*y2;

tz1 = z1.^5;
tz2 = z2.^5;
subplot(2,1,1);
hold on;
plot(x,y1);
plot(x,y2);
subplot(2,1,2);
plot(real(tz1),imag(tz1));
plot(real(tz2),imag(tz2));
% to prove square's effect
angle(tz2)./angle(z2)
