close all;
m1=imread('C:\Users\Jessie\OneDrive\Documents\remotesensingimages\dataset\image(01).tif');
a11=im2double(m1);
subplot(2,2,1);imshow(a11);
%cc=imnoise(a11,'speckle',0.02);
%subplot(2,2,2);imshow(cc);
c=imnoise(a11,'salt & pepper',0.07);
subplot(2,2,2);imshow(c);
a=c;
[m ,n]=size(a);
   for i=2:m-1
     for j=2:n-1
         %for k=1:p
          if (a(i,j)==0)
            a(i,j)=a(i-1,j);
          elseif (a(i,j)==1)
            a(i,j)=a(i-1,j);
          else
            a(i,j)=a(i,j);
          end
          %end
     end
   end
subplot(2,2,3);imshow(a);
for f=1:5
    for i=2:m-1
        for j=2:n-1
            %for k=1:p
    c1(i,j)=a(i-1,j)-a(i,j); %#ok<*SAGROW>
    c2(i,j)=a(i+1,j)-a(i,j);
    c3(i,j)=a(i,j+1)-a(i,j);
    c4(i,j)=a(i,j-1)-a(i,j);
c9=[c1(i,j) c2(i,j) c3(i,j) c4(i,j)];
c10 =median(c9);c11=exp(-(c10/0.01)^2);
a(i,j)=a(i,j)+0.05.*c11.*c10;
            %end
        end
     end
end
imwrite(a,'C:\Users\Jessie\OneDrive\Documents\remotesensingimages\salt&pepper\efficient(L-0.05&K-0.01).jpg')
 
subplot(2,2,4);
imshow(a);
