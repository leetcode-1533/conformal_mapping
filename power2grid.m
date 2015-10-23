clear

[X,Y] = meshgrid(0:0.1:5);

Z = X+1i*Y;
tz1 = sin(Z);

subplot(2,1,1)
scatter(X(:),Y(:),'*')
subplot(2,1,2)
scatter(real(tz1(:)),imag(tz1(:)) );
