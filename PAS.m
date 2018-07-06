axis equal;   %# Make the axes scales match
hold on;      %# Add to the plot
xlabel('x');
ylabel('y');
zlabel('z');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
img = imread('C:\Rahul\school6.png');     %# Load a sample image
xImage = [-(i/2)+k (i/2)+k;-(i/2)+k (i/2)+k];   %# The x data for the image corners            %# The y data for the image corners
yImage = [(j/2)+l (j/2)+l;-(j/2)+l -(j/2)+l]; 
zImage = [1 1;1 1];    %# The z data for the image corners
 hold on;  
 surf(xImage,yImage,zImage,...    %# Plot the surface
     'CData',img,...
     'FaceColor','texturemap');
 hold on;      %# Add to the plot
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
j=j/2;
l=l+(j/2);
img = imread('C:\Rahul\schooll1.png');     %# Load a sample image
xImage = [-(i/2)+k (i/2)+k;-(i/2)+k (i/2)+k];   %# The x data for the image corners
yImage = [-(j/2)+l -(j/2)+l;-(j/2)+l -(j/2)+l];             %# The y data for the image corners
zImage = [(i/2) (i/2); 0 0];   %# The z data for the image corners
 hold on;  
 surf(xImage,yImage,zImage,...    %# Plot the surface
     'CData',img,...
     'FaceColor','texturemap');
 hold on;      %# Add to the plot

img = imread('C:\Rahul\schooll2.png');     %# Load a sample image
xImage = [(i/2)+k (i/2)+k;(i/2)+k (i/2)+k]; 
yImage = [-(j/2)+l (j/2)+l;-(j/2)+l (j/2)+l];   %# The x data for the image corners            %# The y data for the image corners
zImage = [(i/2) (i/2); 0 0];   %# The z data for the image corners
 hold on;  
 surf(xImage,yImage,zImage,...    %# Plot the surface
     'CData',img,...
     'FaceColor','texturemap');
 hold on;      %# Add to the plot
 
 img = imread('C:\Rahul\schooll3.png');     %# Load a sample image
xImage = [-(i/2)+k (i/2)+k;-(i/2)+k (i/2)+k];   %# The x data for the image corners
yImage = [(j/2)+l (j/2)+l;(j/2)+l (j/2)+l];              %# The y data for the image corners
zImage = [(i/2) (i/2); 0 0];   %# The z data for the image corners
 hold on;  
 surf(xImage,yImage,zImage,...    %# Plot the surface
     'CData',img,...
     'FaceColor','texturemap');
 hold on;      %# Add to the plot
 
 
 img = imread('C:\Rahul\schooll4.png');     %# Load a sample image
xImage = [-(i/2)+k -(i/2)+k;-(i/2)+k -(i/2)+k];
yImage = [-(j/2)+l (j/2)+l;-(j/2)+l (j/2)+l];    %# The x data for the image corners            %# The y data for the image corners
zImage = [(i/2) (i/2); 0 0];   %# The z data for the image corners
 hold on;  
 surf(xImage,yImage,zImage,...    %# Plot the surface
     'CData',img,...
     'FaceColor','texturemap');
 hold on;      %# Add to the plot
 
 
img = imread('C:\Rahul\schooll5.png');     %# Load a sample image
xImage = [-(i/2)+k (i/2)+k;-(i/2)+k (i/2)+k];   %# The x data for the image corners            %# The y data for the image corners
yImage = [(j/2)+l (j/2)+l;-(j/2)+l -(j/2)+l];   
zImage = [(i/2) (i/2); (i/2) (i/2)];  %# The z data for the image corners
 hold on;  
 surf(xImage,yImage,zImage,...    %# Plot the surface
     'CData',img,...
     'FaceColor','texturemap');
 hold on;      %# Add to the plot
 
 
 img = imread('C:\Rahul\schooll5.png');     %# Load a sample image
xImage = [-(i/2)+k (i/2)+k;-(i/2)+k (i/2)+k];   %# The x data for the image corners            %# The y data for the image corners
yImage = [(j/2)+l (j/2)+l;-(j/2)+l -(j/2)+l]; 
zImage = [0 0;0 0];   %# The z data for the image corners
 hold on;  
 surf(xImage,yImage,zImage,...    %# Plot the surface
     'CData',img,...
     'FaceColor','texturemap');
 hold on;      %# Add to the plot