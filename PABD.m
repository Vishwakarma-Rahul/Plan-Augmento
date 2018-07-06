axis equal;   %# Make the axes scales match
hold on;      %# Add to the plot
xlabel('x');
ylabel('y');
zlabel('z');

img = imread('C:\Rahul\factory8.png');     %# Load a sample image
xImage = [-(i/2)+k (i/2)+k;-(i/2)+k (i/2)+k];   %# The x data for the image corners            %# The y data for the image corners
yImage = [(j/2)+l (j/2)+l;-(j/2)+l -(j/2)+l]; 
zImage = [1 1;1 1];    %# The z data for the image corners
 hold on;  
 surf(xImage,yImage,zImage,...    %# Plot the surface
     'CData',img,...
     'FaceColor','texturemap');
 hold on;      %# Add to the plot
 
 
p=i;
q=j;
i=i/4;
j=j/4;
for m=1:3
    m=m-2;
    k=k+(m*p/3);
    for n=1:3
        n=n-2;
l=l+(n*q/3);


img = imread('C:\Rahul\bus11.png');     %# Load a sample image
xImage = [-(i/2)+k (i/2)+k;-(i/2)+k (i/2)+k];   %# The x data for the image corners
yImage = [-(j/2)+l -(j/2)+l;-(j/2)+l -(j/2)+l];             %# The y data for the image corners
zImage = [(i/3) (i/3); 0 0];    %# The z data for the image corners
 hold on;  
 surf(xImage,yImage,zImage,...    %# Plot the surface
     'CData',img,...
     'FaceColor','texturemap');
 hold on;      %# Add to the plot

img = imread('C:\Rahul\bus21.png');     %# Load a sample image
xImage = [(i/2)+k (i/2)+k;(i/2)+k (i/2)+k]; 
yImage = [-(j/2)+l (j/2)+l;-(j/2)+l (j/2)+l];   %# The x data for the image corners            %# The y data for the image corners
zImage = [(i/3) (i/3); 0 0];     %# The z data for the image corners
 hold on;  
 surf(xImage,yImage,zImage,...    %# Plot the surface
     'CData',img,...
     'FaceColor','texturemap');
 hold on;      %# Add to the plot
 
 img = imread('C:\Rahul\bus31.png');     %# Load a sample image
xImage = [-(i/2)+k (i/2)+k;-(i/2)+k (i/2)+k];   %# The x data for the image corners
yImage = [(j/2)+l (j/2)+l;(j/2)+l (j/2)+l];              %# The y data for the image corners
zImage = [(i/3) (i/3); 0 0];    %# The z data for the image corners
 hold on;  
 surf(xImage,yImage,zImage,...    %# Plot the surface
     'CData',img,...
     'FaceColor','texturemap');
 hold on;      %# Add to the plot
 
 
 img = imread('C:\Rahul\bus41.png');     %# Load a sample image
xImage = [-(i/2)+k -(i/2)+k;-(i/2)+k -(i/2)+k];
yImage = [-(j/2)+l (j/2)+l;-(j/2)+l (j/2)+l];    %# The x data for the image corners            %# The y data for the image corners
zImage = [(i/3) (i/3); 0 0];     %# The z data for the image corners
 hold on;  
 surf(xImage,yImage,zImage,...    %# Plot the surface
     'CData',img,...
     'FaceColor','texturemap');
 hold on;      %# Add to the plot
 
 
img = imread('C:\Rahul\bus5.png');     %# Load a sample image
xImage = [-(i/2)+k (i/2)+k;-(i/2)+k (i/2)+k];   %# The x data for the image corners            %# The y data for the image corners
yImage = [(j/2)+l (j/2)+l;-(j/2)+l -(j/2)+l];   
zImage = [(i/3) (i/3);(i/3) (i/3)];    %# The z data for the image corners
 hold on;  
 surf(xImage,yImage,zImage,...    %# Plot the surface
     'CData',img,...
     'FaceColor','texturemap');
 hold on;      %# Add to the plot
 
 
 img = imread('C:\Rahul\bus6.png');     %# Load a sample image
xImage = [-(i/2)+k (i/2)+k;-(i/2)+k (i/2)+k];   %# The x data for the image corners            %# The y data for the image corners
yImage = [(j/2)+l (j/2)+l;-(j/2)+l -(j/2)+l]; 
zImage = [0 0;0 0];   %# The z data for the image corners
 hold on;  
 surf(xImage,yImage,zImage,...    %# Plot the surface
     'CData',img,...
     'FaceColor','texturemap');
 hold on;      %# Add to the plot
 l=l-(n*q/3);
    end
    
    k=k-(m*p/3);
    
end
 
 imshow(grayImage);