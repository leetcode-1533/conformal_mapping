clear;clc
pointvalue=100;
point=linspace(0,2*pi,pointvalue)';
for m=1:1
    for p=1:pointvalue
    x(p,m)=(1-(m-1)*0.2)*cos(point(p,1));             %?????x??
    y(p,m)=(1-(m-1)*0.2)*sin(point(p,1));             %?????y??
    z(p,m)=x(p,m)+y(p,m)*i;                         %z=x+yi
    r(p,m)=(x(p,m)^2+y(p,m)^2)^0.5;
    w(p,m)=[1/z(p,m)+(z(p,m)^2)/3];            %==f(z)?????==
    transx(p,m)=real(w(p,m));                     %?f(z)???
    transy(p,m)=imag(w(p,m));                    %?f(z)???
    w(p,m)=log(r(p,m));
    hold on
    end
end
plot(transx,transy)


axis equal
box on
axis([-2,2,-2,2])
