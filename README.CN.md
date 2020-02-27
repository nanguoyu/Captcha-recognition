# 数字验证码识别

> 这是一个对有噪声的三位验证码进行识别的Matlab程序。我们期望这个程序可以自动识别一个包含有三个数字的噪音图像中的数字。输入是如下图所示的一些验证码，输出是[2,0,2]。

在这个例子中，我们介绍了对数字图像进行基本的预处理，以及基于CNN的分类器编写。

![sample](sample.png) 

 这些图像看起来像是Google CAPTCHAs， 或者是许多网站都有的验证码。

在名为‘imagedata’的文件夹里，我们一共1200个和上图类似的图像。他们的标签在文件'lables.txt'中。

具体来说，我们将在给定的测试脚本要求下，编写明文my_classifier.n的Matlab脚本。

## 环境

请确保你已经成功安装[Matlab](https://www.mathworks.com/products/matlab.html ) 和 [Image Processing Toolbox](https://www.mathworks.com/products/image.html)在你的电脑. 

## 立刻运行！

1. 创建名为 ‘labeledImage’ 的文件夹and 运行 ‘DeNoise.m’。
2. 创建名为 SplitLabeledImage’ 的文件夹，并在它下面创建名为‘0’,，‘1’ ，‘2’的三个文件夹（注意文件夹名不包括     ‘   ’  ）。然后 运行 ‘Split.m’。
3. 运行 ‘trainer.m’ 来得到一个训练好的网络，程序会将其保存在 ‘net.mat’文件。
4. 运行 ‘evaluate_classifier.m’ 。

## 它是如何工作的

// TODO



