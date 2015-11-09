clear
im = imread('peppers.png');
[x,y,~] = size(im);
% [X,Y] = meshgrid(1:x,1:y);


% Z = X+1i*Y;
% tz1 = sin(Z);
tz1 = zeros([x*y,1]);
for ix = 1:x
    for iy = 1:y
        tz1(ix*iy) = (ix+1i*iy);
    end
end

subplot(2,1,1)
 %scatter(X(:),Y(:),'*')
subplot(2,1,2)
% scatter(real(tz1(:)),imag(tz1(:)) );

%plist = reshape([X,Y],[],2);

tk1 = im(:,:,1);
tk2 = im(:,:,2);
tk3 = im(:,:,3);
cvector = [tk1(:),tk2(:),tk3(:)];
scatter(real(tz1),imag(tz1),[],cvector)


