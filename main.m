%String represents location of source images to be processed
imageFolder = 'C:\Users';

%Image loading and resizing 
imagePrepared = prepareImages(imageFolder);

%Output images are ready for further processing (segmentation, object
%counting, etc...
imageEnhanced = enhanceImage(imagePrepared);


%Saving images to disk in same location as original images
saveImages(imageEnhanced);


GMM();
Kmeans();

x=imread('KMEANS.png');
imshow(x);
d=imdistline; % a Distance tool for calculating radius range (put a breakpoint here)
[centers, radii, metric]=imfindcircles(x,[4 30],'ObjectPolarity','dark','Sensitivity',0.9); % change the range as needed by checking the previous procedure
figure
imshow(x);
title('Brojanje')
hold on;
viscircles(centers, radii,'EdgeColor','b');
broj_maslina=length(metric)
