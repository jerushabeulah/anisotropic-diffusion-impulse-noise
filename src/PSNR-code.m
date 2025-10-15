close all;
m1=imread('C:\Users\Jessie\OneDrive\Documents\remotesensingimages\dataset\image(01).tif');
m2=imread('C:\Users\Jessie\OneDrive\Documents\remotesensingimages\salt&pepper\preprocessing\grayscale image\output\k\colour(k-25).jpg');
m3=double(m1);
m4=double(m2);
[m ,n]=size(m1);
N = size(m3);
acc = 0;
for k1=2:N(1)-1
  for k2=2:N(2)-1
     acc = acc+ ( m3(k1,k2) - m4(k1,k2) ).^2;  
  end
end
 
mse  = acc/(N(1)*N(2));
psnr = 10*log10((255^2)/mse);
disp(psnr)

