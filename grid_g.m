clear

xgrid = -2:0.01:2;
ygrid = -2:0.01:2;
[X,Y] = meshgrid(xgrid,ygrid);

hue = linspace(0,1,length(xgrid));
val = ones([2,length(hue)]);
color = vertcat(hue,val);
color = hsv2rgb(color');
for x = 1:length(xgrid)
    Z = X(:,x)+1i*Y(:,x);
    tz = sin(Z);
    
    subplot(2,1,1)
    hold on;
    plot(X(:,x),Y(:,x),'Color',color(x,:))
    subplot(2,1,2)
    hold on;
    axis off
    plot(real(tz),imag(tz),'Color',color(x,:));
end

% 
% hue = linspace(0,1,length(ygrid));
% sat = linspace(0,1,length(xgrid));
% val = ones([2,length(hue)]);
% color = vertcat(hue,val);
% color = hsv2rgb(color');
% 
% for y = 1:length(ygrid)
%     pause
%     Z = X(y,:)+1i*Y(y,:);
%     tz = sin(Z);
%     
%     subplot(2,1,1)
%     hold on;
%     plot(X(y,:),Y(y,:),'Color',color(y,:))
%     subplot(2,1,2)
%     hold on;
%     axis off
%     plot(real(tz),imag(tz),'Color',color(y,:));
% end

    