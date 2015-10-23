%generate color
function color = gen_col(hpect,leng)

    hue = ones([1,length(leng)])*hpect;
    sat = linspace(0,1,length(leng));
    val = ones([1,length(hue)]);
    color = vertcat(hue,sat,val);
    color = hsv2rgb(color');
return 