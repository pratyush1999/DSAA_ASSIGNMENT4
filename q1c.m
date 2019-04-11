im=imread('LAKE.tif');
F=dctmtx(8);
im=double(imresize(im, [8 8]));

res=(F'*im*F);
res
idct2(im)