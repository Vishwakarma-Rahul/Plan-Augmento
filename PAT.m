    %{
run('PA5.m');
xy_width=[blobMeasurements.BoundingBox];

i=xy_width(3);
j=xy_width(4);
k=blobMeasurements.Centroid(1); %shifting factor for x axis %x coordinate of centroid
l=blobMeasurements.Centroid(2); %shifting factor for y axis %y coordinate of centroid
%}

t=(j/8)+(j/32);
s=i;

img = imread('C:\Rahul\station2.png');     %# Load a sample image
xImage = [-(i/2)+k (i/2)+k;-(i/2)+k (i/2)+k];   %# The x data for the image corners            %# The y data for the image corners
yImage = [(j/2)+l (j/2)+l;-(j/2)+l -(j/2)+l]; 
zImage = [0.9 0.9;0.9 0.9];   %# The z data for the image corners
 hold on;  
 surf(xImage,yImage,zImage,...    %# Plot the surface
     'CData',img,...
     'FaceColor','texturemap');
 hold on;      %# Add to the plot
 

img = imread('C:\Rahul\track.png');     %# Load a sample image
xImage = [-(s/2)+k (s/2)+k;-(s/2)+k (s/2)+k];   %# The x data for the image corners            %# The y data for the image corners
yImage = [(t/2)+l (t/2)+l;-(t/2)+l -(t/2)+l]; 
zImage = [1 1;1 1];   %# The z data for the image corners
 hold on;  
 surf(xImage,yImage,zImage,...    %# Plot the surface
     'CData',img,...
     'FaceColor','texturemap');
 hold on;      %# Add to the plot

p=i-(i/16);
q=j-(j/16);


j=j/8;
i=i/3;


axis equal;   %# Make the axes scales match
hold on;      %# Add to the plot
xlabel('x');
ylabel('y');
zlabel('z');


for m=1:3
    m=m-2;
    k=k+(m*p/3);
    
img = imread('C:\Rahul\train2.png');     %# Load a sample image
xImage = [-(i/2)+k (i/2)+k;-(i/2)+k (i/2)+k];   %# The x data for the image corners
yImage = [-(j/2)+l -(j/2)+l;-(j/2)+l -(j/2)+l];             %# The y data for the image corners
zImage = [(i/10) (i/10); 0 0];    %# The z data for the image corners
 hold on;  
 surf(xImage,yImage,zImage,...    %# Plot the surface
     'CData',img,...
     'FaceColor','texturemap');
 hold on;      %# Add to the plot

img = imread('C:\Rahul\train1.png');     %# Load a sample image
xImage = [(i/2)+k (i/2)+k;(i/2)+k (i/2)+k]; 
yImage = [-(j/2)+l (j/2)+l;-(j/2)+l (j/2)+l];   %# The x data for the image corners            %# The y data for the image corners
zImage = [(i/10) (i/10); 0 0];    %# The z data for the image corners
 hold on;  
 surf(xImage,yImage,zImage,...    %# Plot the surface
     'CData',img,...
     'FaceColor','texturemap');
 hold on;      %# Add to the plot
 
 img = imread('C:\Rahul\train2.png');     %# Load a sample image
xImage = [-(i/2)+k (i/2)+k;-(i/2)+k (i/2)+k];   %# The x data for the image corners
yImage = [(j/2)+l (j/2)+l;(j/2)+l (j/2)+l];              %# The y data for the image corners
zImage = [(i/10) (i/10); 0 0];   %# The z data for the image corners
 hold on;  
 surf(xImage,yImage,zImage,...    %# Plot the surface
     'CData',img,...
     'FaceColor','texturemap');
 hold on;      %# Add to the plot
 
 
 img = imread('C:\Rahul\train1.png');     %# Load a sample image
xImage = [-(i/2)+k -(i/2)+k;-(i/2)+k -(i/2)+k];
yImage = [-(j/2)+l (j/2)+l;-(j/2)+l (j/2)+l];    %# The x data for the image corners            %# The y data for the image corners
zImage = [(i/10) (i/10); 0 0];    %# The z data for the image corners
 hold on;  
 surf(xImage,yImage,zImage,...    %# Plot the surface
     'CData',img,...
     'FaceColor','texturemap');
 hold on;      %# Add to the plot
 
 
img = imread('C:\Rahul\train3.png');     %# Load a sample image
xImage = [-(i/2)+k (i/2)+k;-(i/2)+k (i/2)+k];   %# The x data for the image corners            %# The y data for the image corners
yImage = [(j/2)+l (j/2)+l;-(j/2)+l -(j/2)+l];   
zImage = [(i/10) (i/10); (i/10) (i/10)];   %# The z data for the image corners
 hold on;  
 surf(xImage,yImage,zImage,...    %# Plot the surface
     'CData',img,...
     'FaceColor','texturemap');
 hold on;      %# Add to the plot
 
 
 img = imread('C:\Rahul\train3.png');     %# Load a sample image
xImage = [-(i/2)+k (i/2)+k;-(i/2)+k (i/2)+k];   %# The x data for the image corners            %# The y data for the image corners
yImage = [(j/2)+l (j/2)+l;-(j/2)+l -(j/2)+l]; 
zImage = [0 0;0 0];   %# The z data for the image corners
 hold on;  
 surf(xImage,yImage,zImage,...    %# Plot the surface
     'CData',img,...
     'FaceColor','texturemap');
 hold on;      %# Add to the plot
 
 k=k-(m*p/3);

end
