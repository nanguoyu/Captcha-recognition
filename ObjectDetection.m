
trainSet = gTruth(1:21,:);
trainData = [];
tarinClass = [];

for i=1:21
    filename = trainSet.imageFilename(i);
    filename = filename{1}
    
    %  Image File
    im = imread(filename);
    
    %  Plot
    figure;
    index_number = 1;
    
    % number 
    % 50 * 27   
    % Black 0, White 1
    number1 = trainSet.Number1(i);
    number1 = number1{1};
   if  ~isempty(number1)
        [num,d] = size(number1);
        for k = 1:d
            disp("Number 1");
            position = number1(k).Position;
            imresized = resizeCrop(im, position);
            subplot(1,3,index_number); index_number = index_number+1;
            imshow(imresized);
        end
   end
   
    number2 = trainSet.Number2(i);
    number2 = number2{1};
    if  ~isempty(number2)
        [num,d] = size(number2);
        for k = 1:d
             disp("Number 2");
            position = number2(k).Position;
            imresized = resizeCrop(im, position);
            subplot(1,3,index_number); index_number = index_number+1;
            imshow(imresized);
        end
    end
   
    number0 = trainSet.Number0(i);
    number0 = number0{1};
   if  ~isempty(number0)
        [num,d] = size(number0);
        for k = 1:d
            disp("Number 0");
            position = number0(k).Position;
            imresized = resizeCrop(im, position);
            subplot(1,3,index_number); index_number = index_number+1;
            imshow(imresized);
        end
   end
   
end
