jpegFiles = dir('*.jpg'); 
numfiles = length(jpegFiles);
for k = 1:numfiles/10
  myVideo(:,:,:,k) = im2single(imread(jpegFiles(k).name)); 
end