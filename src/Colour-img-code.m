close all;
m1=imread('C:\Users\Jessie\OneDrive\Documents\remotesensingimages\colour.tif');
a11=im2double(m1);
subplot(2,2,1);imshow(a11);
%cc=imnoise(a11,'speckle',0.02);
%subplot(2,2,2);imshow(cc);
c=imnoise(a11,'salt & pepper',0.07);
subplot(2,2,2);imshow(c);
a=c;
[m ,n, p]=size(a);
   for i=2:m-1
     for j=2:n-1
         for k=1:p
          if (a(i,j,k)==0)
            a(i,j,k)=a(i-1,j,k);
          elseif (a(i,j,k)==1)
            a(i,j,k)=a(i-1,j,k);
          else
            a(i,j,k)=a(i,j,k);
          end
          end
     end
   end
subplot(2,2,3);imshow(a);
for f=1:5
    for i=2:m-1
        for j=2:n-1
            for k=1:p
    c1(i,j,k)=a(i-1,j,k)-a(i,j,k); %#ok<*SAGROW>
    c2(i,j,k)=a(i+1,j,k)-a(i,j,k);
    c3(i,j,k)=a(i,j+1,k)-a(i,j,k);
    c4(i,j,k)=a(i,j-1,k)-a(i,j,k);
c9=[c1(i,j,k) c2(i,j,k) c3(i,j,k) c4(i,j,k)];
c10 =median(c9);c11=exp(-(c10/0.01)^2);
a(i,j,k)=a(i,j,k)+0.05.*c11.*c10;
            end
        end
     end
end
imwrite(a,'C:\Users\Jessie\OneDrive\Documents\remotesensingimages\salt&pepper\efficientcolour(L-0.05&K-0.01).jpg')
 
subplot(2,2,4);
imshow(a);
