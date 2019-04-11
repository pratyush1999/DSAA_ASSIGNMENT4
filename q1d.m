function res=myDCT_quantization(imDCT, qm, c)
res=round(imDCT./(c*qm));
end