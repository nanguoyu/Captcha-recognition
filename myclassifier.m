function S = myclassifier(im)

%This classifier is not state of the art... but should give you an idea of
%the format we expect to make it easy to keep track of your scores. Input
%is the image, output is a 1 x 3 vector of the three numbers in the image
%
%This baseline classifier tries to guess... so should score about (3^3)^-1
%on average, approx. a 4% chance of guessing the correct answer. 
%
% im  = imread(sprintf('imagedata/train_%04d.png', 22));

[im1,im2,im3] = splitFunction(im);
load net;
% for e = 1:number
% %         Pred = classify(net,splited_images(e));
%          figure,imshow(splited_images(e));
% %         disp("NUMBER "+string(Pred));
% end
Pred1 = classify(net,im1);
Pred2 = classify(net,im2);
Pred3 = classify(net,im3);
S = [grp2idx(Pred1)-1,grp2idx(Pred2)-1,grp2idx(Pred3)-1];

end

