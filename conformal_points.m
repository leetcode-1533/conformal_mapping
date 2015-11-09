clear
th = (0:0.1:60)*pi/180;
r = 0:.005:1;
[TH,R] = meshgrid(th,r);
[X,Y] = pol2cart(TH,R);

Z = X+1i*Y;
tz1 = Z.^2;

subplot(2,1,1)
scatter(X(:),Y(:),'*')
subplot(2,1,2)
scatter(real(tz1(:)),imag(tz1(:)),'*');
