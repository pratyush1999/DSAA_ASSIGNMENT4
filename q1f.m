function res=RMSE(im1, im2)
res=sum(sum((im1-im2).*(im1-im2)));
res=res/(size(im1,1)*size(im1,2));
res=sqrt(res);
res
end