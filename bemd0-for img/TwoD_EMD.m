function IMF_all=TwoD_EMD(A,imf_num,errmax,imax); 
%INPUT: 
%   A is the image to be decomposed, given as a rectangular matrix 
%   imf_num is the number of intrinsic mode functions to be taken from A 
%   errmax is the maximum error for sift_bicubic 
%   imax is the maximum number of iterations in sift_bicubic 
%------------------------------------------------------------------- 
%OUTPUT: 
%   IMF_all is a 3D array containing each instrinsic mode function 
%       as well as the final residue 
%A��Ҫ�ֽ��ͼ�񣬸���Ϊ���ξ���
%imf_num�Ǵ�A��ȡ�Ĺ���ģʽ����������
%errmax��sift_bicubic��������
%imax��sift_bicubic�е�����������
%-------------------------------------------------------------------
%OUTPUT��
%IMF_all��һ������ÿ������ģʽ���ܵ�3D����
%�Լ����ղ�����
figure;
imagesc(A); 
colormap(gray);%���һ����ɫϵ������ͼ
saveas(gcf,'.\png\0.png','png');
IMF_all=[]; 
[m,n]=size(A); 
dx=1/n; 
dy=1/m; 
i=0;
for it=1:imf_num 
    i=i+1;
    IMF=sift_bicubic(errmax,imax,dx,dy,A); 
    saveas(gcf,['.\png\',num2str(i),num2str(i),'.png'],'png');
    figure(it+5) 
    imagesc(IMF); 
    colormap(gray);
    A = double(A);
    A=A-IMF; 
    IMF_all(:,:,it)=IMF; 
    saveas(gcf,['.\png\',num2str(i),'.png'],'png');
end 
IMF_all(:,:,it+1)=A; 
figure;
imagesc(A); 
colormap(gray); 
