%generate color
function color = gen_col(hpect,leng)

    hue = ones([1,length(leng)])*hpect;
    sat = linspace(1,0.3,length(leng));
    val = ones([1,length(leng)]);
    color = vertcat(hue,sat,val);
    color = hsv2rgb(color');
return 