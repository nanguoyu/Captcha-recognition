function [im1,im2,im3, n_number] = splitFunction(im)

% This function is used to split number from  a image.
% It will generte many  small image in ./SplitLabeledImage
% true_labels = importdata('labels.txt');
% my_labels = zeros(size(true_labels));
% N = size(true_labels,1);
i_p = 0;
%     im = imread(sprintf('labeledImage/labeled_train_%04d.png', k));
    im = DenoiseFunction(im);
    [w,h] = size(im);
    
    %Find vertical image peak
    vertical_sum = sum(im);
    change_point=[];
    start_index=0;
    for i=1:h
        if vertical_sum(i) == w && i<h && vertical_sum(i+1) <w
            change_point = [change_point,i];
            start_index = i;
        elseif vertical_sum(i) < w &&  i<h &&  vertical_sum(i+1) == w
            if i+1 - start_index >=40
                mid_point = floor((i+1 - start_index)/2)+start_index;
                change_point = [change_point, mid_point];
                change_point = [change_point, mid_point+1];
                start_index = mid_point+1;
            end
            if i+1 - start_index >=10
                change_point = [change_point,i+1];
            else
                 change_point(size(change_point,2))=[];
            end
        end
    end
    
    n_number = size(change_point,2)/2;
    if n_number < 3
        disp("We just recognise no more than 3");
    end
    
    %Find horizontal image peak
    horizontal_change_point=[];
    for i = 1:n_number
        j_im = im(:,change_point(2*(i-1)+1):change_point(2*i));
        gap = change_point(2*i) - change_point(2*(i-1)+1)+1;
        horizontal_sum =sum(j_im,2);
        points = [];
        for m = 1:w
             if horizontal_sum(m) ==gap && m<w && horizontal_sum(m+1) <gap
                 points = [points,m];
             elseif horizontal_sum(m) <gap && m<w && horizontal_sum(m+1) == gap
                 points = [points,m];
             end
        end
        minp = min(points); maxp = max(points);
        points = [minp, maxp];
        horizontal_change_point = [horizontal_change_point,  points];
         
    end
     if n_number==3
             for i=1:n_number
                croped_image = im( horizontal_change_point(2*(i-1)+1) : horizontal_change_point(2*i) , change_point(2*(i-1)+1):change_point(2*i));
                resized_image = imresize(croped_image,[50,35]);
                i_p=i_p+1;
                if i_p==1
                    im1 = resized_image;
                elseif i_p==2
                    im2 = resized_image;
                elseif i_p==3
                    im3 = resized_image;
                end
             end
         
     else
         for i=1:n_number
                croped_image = im( horizontal_change_point(2*(i-1)+1) : horizontal_change_point(2*i) , change_point(2*(i-1)+1):change_point(2*i));
                resized_image = imresize(croped_image,[50,35]);
                i_p=i_p+1;
                if i_p==1
                    im1 = resized_image;
                elseif i_p==2
                    im2 = resized_image;
                elseif i_p==3
                    im3 = resized_image;
                end
         end
         if n_number==2
             im2=im1;
             im3=im1;
         end
     end


end
