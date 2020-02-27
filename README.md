# Classification for Digital Image

> This is an Matlab project for recognizing noised digital image. What we want is a programme that could automatically  recognizing several noised digital image. The inputs are some images like the following picture, the exception is [2, 0, 2].

[中文介绍](README.CN.md)

In this project, we introduced a classification example for number images.  

![sample](sample.png)

They are similar to Google CAPTCHAs. 

There are totally 1200 images in folder 'imagedata', and ground truth in file 'labels.txt'.

The task is to make a function called my_classifier.m that decodes three  digits in an image. 

## Environment

[Matlab](https://www.mathworks.com/products/matlab.html ) [Image Processing Toolbox] and (https://www.mathworks.com/products/image.html) are ready for your computer.

## Run

1. New a folder named ‘labeledImage’ and run ‘DeNoise.m’
2. New a folder named ‘SplitLabeledImage’ with 3 sub-folders named ‘0’, ‘1’ and ‘2’, then run ‘Split.m’
3. Run ‘trainer.m’ to get trained network ‘net.mat’
4. Run ‘evaluate_classifier.m’

## How does it work

// TODO



