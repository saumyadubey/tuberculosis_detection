fid=fopen('JPCLN145.IMG');
X=fread(fid,[2048,2048],'*ubit16','ieee-be');
max(X);
min(X);
%flipdim(X,2);
J=mat2gray(X);
%imshow(flipdim(J,2));

imwrite(imrotate(flipdim(J,2),90),'JPCLN145.jpeg');
imshow('JPCLN145.jpeg');