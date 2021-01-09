x=imread('neka_slika.png');
imshow(x);
d=imdistline; % a distance tool for determining radius range (put a breakpoint here)
[centers, radii, metric]=imfindcircles(x,[4 30],'ObjectPolarity','dark','Sensitivity',0.9); % change the range as needed by checking the previous procedure
imshow(x);
hold on;
viscircles(centers, radii,'EdgeColor','b'); 
broj_maslina=length(metric)