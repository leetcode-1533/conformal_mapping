clear
RGB = imread('peppers.png');
RGB = im2double(RGB);
[x,y,~] = size(RGB);
RGB_2 = ones([1000,1000,3]);
xtable = zeros([x*y,1]);
ytable = zeros([x*y,1]);

for ix = 1:x
    for iy = 1:y
        z = (ix/x - 0.5)*pi + (iy/y -0.5)*4;
        w = z;
        xtable(ix*iy) = real(w);
        ytable(ix*iy) = imag(w);
    end
end

% xtable(:,3) = log(xtable(:,3));
% ytable(:,3) = log(ytable(:,3));
% [xtable(:,3),xs] = mapminmax(xtable(:,3));
% [ytable(:,3),ys] = mapminmax(ytable(:,3));
xtable = mapminmax(xtable);
ytable = mapminmax(ytable);
for ix = 1:x
    for iy = 1:y
        RGB_2(xtable(ix*iy),ytable(ix*iy),:) = RGB(ix,iy,:);
    end
end

imshow(RGB_2);



