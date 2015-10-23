clear;clc
pointvalue=100;
point=linspace(0,2*pi,pointvalue)';
m = 1;
for p=1:pointvalue
    x(p,m)=(1-(m-1)*0.2)*cos(point(p,1));             %?????x??
    y(p,m)=(1-(m-1)*0.2)*sin(point(p,1));             %?????y??
    z(p,m)=x(p,m)+y(p,m)*i;                         %z=x+yi
%     r(p,m)=(x(p,m)^2+y(p,m)^2)^0.5;
    w(p,m)= log(z(p,m))^2;            %==f(z)?????==
    transx(p,m)=real(w(p,m));                     %?f(z)???
    transy(p,m)=imag(w(p,m));                    %?f(z)???
%     w(p,m)=log(r(p,m));
    hold on
end
plot(transx,transy)