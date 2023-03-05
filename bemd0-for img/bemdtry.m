%z = geotiffread('ProjectedDEM1.tif');%读取tif文件
z=imread('dem2.tif');%读取图片文件
z=z(:,:,1);
imf = TwoD_EMD(z,3,0,1); %（图片对象，本征模函数数量，sift_bicubic的最大错误，sift_bicubic的最大迭代次数）