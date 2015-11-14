function fi = conformal_drawgrids(x,y,fun)

% clears
% th = (0:5:60)*pi/180;
% r = 0:0.05:1;
% x = -0.5*pi:0.1*pi:0.5*pi;
% y = -2:0.1:2;
% [TH,R] = meshgrid(th,r);
% [X,Y] = pol2cart(TH,R);

fi = figure();
[X,Y] = meshgrid(x,y);

for xi = 1:length(x)
    Z = X(:,xi)+1i*Y(:,xi);
    tz = fun(Z);
    
    subplot(2,1,1)
    hold on;
    plot(X(:,xi),Y(:,xi),'r')
    subplot(2,1,2)
    hold on;
    axis off
    plot(real(tz),imag(tz),'r');
end


for yi = 1:length(y)
    Z = X(yi,:)+1i*Y(yi,:);
    tz = fun(Z);
    
    subplot(2,1,1)
    hold on;
    plot(X(yi,:),Y(yi,:),'b')
    subplot(2,1,2)
    hold on;
    plot(real(tz),imag(tz),'b');
end
   
end
    
    