function [outputArg] = resizeCrop(inputImage,position)
%RESIZECROP Resize and crop
%   Resize image and crop image

%Crop
position = floor(position);
x_0 = position(1); 
y_0 = position(2);
x_1 = position(1) +position(3); 
y_1 = position(2)+ position(4);
position
imCroped = inputImage( y_0:y_1,x_0 : x_1);
% figure;imshow(imCroped);

% Resize
outputArg = imresize(imCroped,[50,27]);
end

