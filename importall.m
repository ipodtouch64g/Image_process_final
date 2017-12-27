jpegFiles = dir('/Users/qazxws/Downloads/supp_release/video_results/frames/*.jpg'); 
numfiles = length(jpegFiles);
for k = 1:numfiles
  myVideo(:,:,:,k) = im2single(imread(strcat('/Users/qazxws/Downloads/supp_release/video_results/frames/',jpegFiles(k).name))); 
end