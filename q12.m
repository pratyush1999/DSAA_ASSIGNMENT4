im=imread('LAKE.TIF');
im=double(im);
im1=im(420:427,45:52);
im2=im(427:434,298:305);
im3=im(30:37,230:237);
% imagesc(im1);
q =[

    16,    11 ,   10  ,  16 ,  24,    40 ,   51,    61
,    12 ,   12,    14,    19 ,   26 ,   58  ,  60 ,   55,
    14  ,  13 ,   16 ,   24,    40  ,  57 ,   69 ,   56,
    14,    17,    22,    29,    51 ,   87,    80 ,   62,
    18 ,   22 ,   37 ,   56,    68 ,  109,   103 ,   77,
    24 ,   35 ,   55 ,   64 ,   81,   104,   113,    92
,    49 ,   64 ,   78  ,  87  , 103  , 121 ,  120  , 101
 ,   72 ,   92 ,   95  ,  98  , 112,   100,   103,    99];
c=2;
dim1=dct2(im1);
imagesc(dim1);
dim2=dct2(im2);
% figure
% imagesc(dim2);
dim3=dct2(im3);
% figure
% imagesc(dim3);
dim=im;
dim(420:427,45:52)=dim1;
dim(427:434,298:305)=dim2;
dim(30:37,230:237)=dim3;

qim=im;
qim1=round(dim1./(q*c));
figure
imagesc(qim1);
qim2=round(dim2./(q*c));
% figure
% imagesc(qim2);
qim3=round(dim3./(q*c));
% figure
% imagesc(qim3);
qim(420:427,45:52)=qim1;
qim(427:434,298:305)=qim2;
qim(30:37,230:237)=qim3;

rim=im;
rim1=idct2(qim1.*q*c);
figure
imagesc(rim1);
rim2=idct2(qim2.*q*c);
% figure
% imagesc(rim2);
rim3=idct2(qim3.*q*c);
% figure
% imagesc(rim3);
rim(420:427,45:52)=rim1;
rim(427:434,298:305)=rim2;
rim(30:37,230:237)=rim3;