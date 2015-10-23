%generate color
function color = gen_col(leng)

    hue = linspace(0,1,length(leng));
    val = ones([2,length(hue)]);
    color = vertcat(hue,val);
    color = hsv2rgb(color');
return 