f = figure();
hold on
subplot(2,1,1)
axis([-2,2,-2,2])
subplot(2,1,2)
axis([-4,4,-4,4])
for x = 1:length(-0.5*pi:0.005*pi:0.5*pi)
    gradual_color(f,x)
    mov(x) = getframe(f);
end