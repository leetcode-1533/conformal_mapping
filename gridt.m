clear
th = (0:5:60)*pi/180;
r = 0:0.05:1;
[TH,R] = meshgrid(th,r);
[X,Y] = pol2cart(TH,R);



for x = 1:length(th)
    Z = X(:,x)+1i*Y(:,x);
    tz = sin(Z).^3;
    
    subplot(2,1,1)
    hold on;
    plot(X(:,x),Y(:,x),'r')
    subplot(2,1,2)
    hold on;
    axis off
    plot(real(tz),imag(tz),'r');
end


for y = 1:length(r)
    Z = X(y,:)+1i*Y(y,:);
    tz = sin(Z).^3;
    
    subplot(2,1,1)
    hold on;
    plot(X(y,:),Y(y,:),'b')
    subplot(2,1,2)
    hold on;
    plot(real(tz),imag(tz),'b');
end
    
    
    