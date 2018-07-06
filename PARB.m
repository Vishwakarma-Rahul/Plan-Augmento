axis equal;   %# Make the axes scales match
hold on;      %# Add to the plot
xlabel('x');
ylabel('y');
zlabel('z');

img = imread('C:\Rahul\residentialbuilding1.png');     %# Load a sample image
xImage = [-(i/2)+k (i/2)+k;-(i/2)+k (i/2)+k];   %# The x data for the image corners
yImage = [-(j/2)+l -(j/2)+l;-(j/2)+l -(j/2)+l];             %# The y data for the image corners
zImage = [(i*3) (i*3); 0 0];    %# The z data for the image corners
 hold on;  
 surf(xImage,yImage,zImage,...    %# Plot the surface
     'CData',img,...
     'FaceColor','texturemap');
 hold on;      %# Add to the plot

img = imread('C:\Rahul\residentialbuilding2.png');     %# Load a sample image
xImage = [(i/2)+k (i/2)+k;(i/2)+k (i/2)+k]; 
yImage = [-(j/2)+l (j/2)+l;-(j/2)+l (j/2)+l];   %# The x data for the image corners            %# The y data for the image corners
zImage = [(i*3) (i*3); 0 0];    %# The z data for the image corners
 hold on;  
 surf(xImage,yImage,zImage,...    %# Plot the surface
     'CData',img,...
     'FaceColor','texturemap');
 hold on;      %# Add to the plot
 
 img = imread('C:\Rahul\residentialbuilding3.png');     %# Load a sample image
xImage = [-(i/2)+k (i/2)+k;-(i/2)+k (i/2)+k];   %# The x data for the image corners
yImage = [(j/2)+l (j/2)+l;(j/2)+l (j/2)+l];              %# The y data for the image corners
zImage = [(i*3) (i*3); 0 0];   %# The z data for the image corners
 hold on;  
 surf(xImage,yImage,zImage,...    %# Plot the surface
     'CData',img,...
     'FaceColor','texturemap');
 hold on;      %# Add to the plot
 
 
 img = imread('C:\Rahul\residentialbuilding4.png');     %# Load a sample image
xImage = [-(i/2)+k -(i/2)+k;-(i/2)+k -(i/2)+k];
yImage = [-(j/2)+l (j/2)+l;-(j/2)+l (j/2)+l];    %# The x data for the image corners            %# The y data for the image corners
zImage = [(i*3) (i*3); 0 0];    %# The z data for the image corners
 hold on;  
 surf(xImage,yImage,zImage,...    %# Plot the surface
     'CData',img,...
     'FaceColor','texturemap');
 hold on;      %# Add to the plot
 
 
img = imread('C:\Rahul\residentialbuilding5.png');     %# Load a sample image
xImage = [-(i/2)+k (i/2)+k;-(i/2)+k (i/2)+k];   %# The x data for the image corners            %# The y data for the image corners
yImage = [(j/2)+l (j/2)+l;-(j/2)+l -(j/2)+l];   
zImage = [(i*3) (i*3);(i*3) (i*3)];   %# The z data for the image corners
 hold on;  
 surf(xImage,yImage,zImage,...    %# Plot the surface
     'CData',img,...
     'FaceColor','texturemap');
 hold on;      %# Add to the plot
 
 
 img = imread('C:\Rahul\residentialbuilding5.png');     %# Load a sample image
xImage = [-(i/2)+k (i/2)+k;-(i/2)+k (i/2)+k];   %# The x data for the image corners            %# The y data for the image corners
yImage = [(j/2)+l (j/2)+l;-(j/2)+l -(j/2)+l]; 
zImage = [0 0;0 0];   %# The z data for the image corners
 hold on;  
 surf(xImage,yImage,zImage,...    %# Plot the surface
     'CData',img,...
     'FaceColor','texturemap');
 hold on;      %# Add to the plot
 
