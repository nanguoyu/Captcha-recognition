N = 1200;
for k = 1:N
%     im = imread(sprintf('imagedata/train_%04d.png', k));
I = imread(sprintf('imagedata/train_%04d.png', k));
 Ibinary= im2bw(I,graythresh(I));
Ibinaryf = imfilter(Ibinary,fspecial('average',5),'replicate');
 se1 =strel('disk',1);
IbinaryAfterClosing=imclose(Ibinaryf,se1);
% figure,imshow(IbinaryAfterClosing);
imwrite(IbinaryAfterClosing,sprintf('labeledImage/labeled_train_%04d.png', k))
end
