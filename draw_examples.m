x = -0.5*pi:0.1*pi:0.5*pi;
y = -2:0.1:2;

fi = conformal_drawgrids(x,y,@sin);
saveas(fi,'sin.png');


x = -2:0.1:2;
y = -2:0.1:2;

ind05 = @(z) com_ind(z,0.5);
fi = conformal_drawgrids(x,y,ind05);
saveas(fi,'ind05.png');

ind2 = @(z) com_ind(z,2);
fi = conformal_drawgrids(x,y,ind2);
saveas(fi,'ind2.png');

ind3 = @(z) com_ind(z,3);
fi = conformal_drawgrids(x,y,ind3);
saveas(fi,'ind3.png');

linear = @(z) 13i*z + 4i;
fi = conformal_drawgrids(x,y,linear);
saveas(fi,'linear.png');



