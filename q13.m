im=imread('LAKE.TIF');
im=double(im);
imagesc(im);
q =[

    16,    11 ,   10  ,  16 ,  24,    40 ,   51,    61
,    12 ,   12,    14,    19 ,   26 ,   58  ,  60 ,   55,
    14  ,  13 ,   16 ,   24,    40  ,  57 ,   69 ,   56,
    14,    17,    22,    29,    51 ,   87,    80 ,   62,
    18 ,   22 ,   37 ,   56,    68 ,  109,   103 ,   77,
    24 ,   35 ,   55 ,   64 ,   81,   104,   113,    92
,    49 ,   64 ,   78  ,  87  , 103  , 121 ,  120  , 101
 ,   72 ,   92 ,   95  ,  98  , 112,   100,   103,    99];
c=11;
fun = @(block_struct) dct2(block_struct.data);
res=blockproc(im, [8 8], fun);

fun2 = @(block_struct) quantise(block_struct.data, q, c);
res=blockproc(res, [8 8], fun2);

fun3 = @(block_struct) dequantise(block_struct.data, q, c);
res=blockproc(res, [8 8], fun3);

fun4 = @(block_struct) idct2(block_struct.data);
res=blockproc(res, [8 8], fun4);
figure;
imagesc(res);

RMSE(im, res)
function res=RMSE(im1, im2)
res=sum(sum((im1-im2).*(im1-im2)));
res=res/(size(im1,1)*size(im1,2));
res=sqrt(res);
end

function res=quantise(im, q, c)
 res=round(im./(q*c));
end
function res=dequantise(im, q, c)
res=im.*(q*c);
end