function [outputArg1] = DenoiseFunction(I)
%DENOISEFUNCTION Denoise Image Function
%   
 Ibinary= im2bw(I,graythresh(I));
Ibinaryf = imfilter(Ibinary,fspecial('average',5),'replicate');
 se1 =strel('disk',1);
IbinaryAfterClosing=imclose(Ibinaryf,se1);

outputArg1 = IbinaryAfterClosing;
end

