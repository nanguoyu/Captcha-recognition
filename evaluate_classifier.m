tic
true_labels = importdata('labels.txt');
my_labels = zeros(size(true_labels));
N = size(true_labels,1);
for k = 1:N
    im = imread(sprintf('imagedata/train_%04d.png', k));
    my_labels(k,:) = myclassifier(im);
end

fprintf('\n\nAverage precision: \n');
fprintf('%f\n\n',mean(sum(abs(true_labels - my_labels),2)==0));
toc

