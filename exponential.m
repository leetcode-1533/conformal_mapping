clear

% inte = -5:0.1:5;
%[x,y] = meshgrid(inte);
y = -50:0.1:50;
x = ones([1,length(y)]);

z = x+1i*y;
z = exp(z);
% 
% contour(x,y,real(z),100)
% hold on;
% contour(x,y,imag(z),100)
polar(angle(z),abs(z))