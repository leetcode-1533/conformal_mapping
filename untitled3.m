R=6000; %radius
S=10;   %num circ.lines
N=10;   %num ang.lines

sect_width=2*pi/N;    
offset_angle=0:sect_width:2*pi-sect_width;

%------------------
r=linspace(0,R,S+1);
w=0:.01:2*pi;

clf %remove if needed

hold on
axis equal
for n=2:length(r)

    plot(real(r(n)*exp(j*w)),imag(r(n)*exp(j*w)),'k--')

end


for n=1:length(offset_angle)

    plot(real([0 R]*exp(j*offset_angle(n))),imag([0 R]*exp(j*offset_angle(n))),'k-')

end
%------------------