%z = geotiffread('ProjectedDEM1.tif');%��ȡtif�ļ�
z=imread('dem2.tif');%��ȡͼƬ�ļ�
z=z(:,:,1);
imf = TwoD_EMD(z,3,0,1); %��ͼƬ���󣬱���ģ����������sift_bicubic��������sift_bicubic��������������