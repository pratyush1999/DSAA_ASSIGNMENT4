im=imread('LAKE.tif');
[counts, y]=imhist(im);
counts=(counts(counts~=0))./(size(im,1)*size(im,2));
res=-sum(counts.*log2(counts));
res
entropy(im)