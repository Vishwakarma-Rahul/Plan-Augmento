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
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 i=i/2;
 j=j/2;
 l=l+(j/2);

img = imread('C:\Rahul\factory1.png');     %# Load a sample image
xImage = [-(i/2)+k (i/2)+k;-(i/2)+k (i/2)+k];   %# The x data for the image corners
yImage = [-(j/2)+l -(j/2)+l;-(j/2)+l -(j/2)+l];             %# The y data for the image corners
zImage = [(i/2) (i/2); 0 0];   %# The z data for the image corners
 hold on;  
 surf(xImage,yImage,zImage,...    %# Plot the surface
     'CData',img,...
     'FaceColor','texturemap');
 hold on;      %# Add to the plot

img = imread('C:\Rahul\factory1.png');     %# Load a sample image
xImage = [(i/2)+k (i/2)+k;(i/2)+k (i/2)+k]; 
yImage = [-(j/2)+l (j/2)+l;-(j/2)+l (j/2)+l];   %# The x data for the image corners            %# The y data for the image corners
zImage = [(i/2) (i/2); 0 0];   %# The z data for the image corners
 hold on;  
 surf(xImage,yImage,zImage,...    %# Plot the surface
     'CData',img,...
     'FaceColor','texturemap');
 hold on;      %# Add to the plot
 
 img = imread('C:\Rahul\factory1.png');     %# Load a sample image
xImage = [-(i/2)+k (i/2)+k;-(i/2)+k (i/2)+k];   %# The x data for the image corners
yImage = [(j/2)+l (j/2)+l;(j/2)+l (j/2)+l];              %# The y data for the image corners
zImage = [(i/2) (i/2); 0 0];   %# The z data for the image corners
 hold on;  
 surf(xImage,yImage,zImage,...    %# Plot the surface
     'CData',img,...
     'FaceColor','texturemap');
 hold on;      %# Add to the plot
 
 
 img = imread('C:\Rahul\factory1.png');     %# Load a sample image
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
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 img = imread('C:\Rahul\schooll5.png');     %# Load a sample image
xImage = [-(i/2)+k (i/2)+k;-(i/2)+k (i/2)+k];   %# The x data for the image corners            %# The y data for the image corners
yImage = [(j/2)+l (j/2)+l;-(j/2)+l -(j/2)+l]; 
zImage = [0 0;0 0];   %# The z data for the image corners
 hold on;  
 surf(xImage,yImage,zImage,...    %# Plot the surface
     'CData',img,...
     'FaceColor','texturemap');
 hold on;      %# Add to the plot
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 %%%%oblique above roof
img = imread('C:\Rahul\schooll5.png');     %# Load a sample image
xImage = [-(i/2)+k -(i/4)+k;-(i/2)+k -(i/4)+k];   %# The x data for the image corners            %# The y data for the image corners
yImage = [(j/2)+l (j/2)+l;-(j/2)+l -(j/2)+l];   
zImage = [(i/2) (i/2)+(i/4); (i/2) (i/2)+(i/4)];  %# The z data for the image corners
 hold on;  
 surf(xImage,yImage,zImage,...    %# Plot the surface
     'CData',img,...
     'FaceColor','texturemap');
 hold on;      %# Add to the plot
 
 img = imread('C:\Rahul\schooll5.png');     %# Load a sample image
xImage = [-(i/4)+k k;-(i/4)+k k];   %# The x data for the image corners            %# The y data for the image corners
yImage = [(j/2)+l (j/2)+l;-(j/2)+l -(j/2)+l];   
zImage = [(i/2) (i/2)+(i/4); (i/2) (i/2)+(i/4)];  %# The z data for the image corners
 hold on;  
 surf(xImage,yImage,zImage,...    %# Plot the surface
     'CData',img,...
     'FaceColor','texturemap');
 hold on;      %# Add to the plot
 
 img = imread('C:\Rahul\schooll5.png');     %# Load a sample image
xImage = [k (i/4)+k ;k (i/4)+k ];   %# The x data for the image corners            %# The y data for the image corners
yImage = [(j/2)+l (j/2)+l;-(j/2)+l -(j/2)+l];   
zImage = [(i/2) (i/2)+(i/4); (i/2) (i/2)+(i/4)];  %# The z data for the image corners
 hold on;  
 surf(xImage,yImage,zImage,...    %# Plot the surface
     'CData',img,...
     'FaceColor','texturemap');
 hold on;      %# Add to the plot
 
 img = imread('C:\Rahul\schooll5.png');     %# Load a sample image
xImage = [(i/4)+k (i/2)+k;(i/4)+k (i/2)+k];   %# The x data for the image corners            %# The y data for the image corners
yImage = [(j/2)+l (j/2)+l;-(j/2)+l -(j/2)+l];   
zImage = [(i/2) (i/2)+(i/4); (i/2) (i/2)+(i/4)];  %# The z data for the image corners
 hold on;  
 surf(xImage,yImage,zImage,...    %# Plot the surface
     'CData',img,...
     'FaceColor','texturemap');
 hold on;      %# Add to the plot
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 %%%vertical above roof
img = imread('C:\Rahul\schooll5.png');     %# Load a sample image
xImage = [-(i/4)+k -(i/4)+k;-(i/4)+k -(i/4)+k];
yImage = [-(j/2)+l (j/2)+l;-(j/2)+l (j/2)+l];    %# The x data for the image corners            %# The y data for the image corners
zImage = [(i/2)+(i/4) (i/2)+(i/4);(i/2) (i/2)];   %# The z data for the image corners
 hold on;  
 surf(xImage,yImage,zImage,...    %# Plot the surface
     'CData',img,...
     'FaceColor','texturemap');
 hold on;      %# Add to the plot
 
 img = imread('C:\Rahul\schooll5.png');     %# Load a sample image
xImage = [k k;k k];
yImage = [-(j/2)+l (j/2)+l;-(j/2)+l (j/2)+l];    %# The x data for the image corners            %# The y data for the image corners
zImage = [(i/2)+(i/4) (i/2)+(i/4);(i/2) (i/2)];   %# The z data for the image corners
 hold on;  
 surf(xImage,yImage,zImage,...    %# Plot the surface
     'CData',img,...
     'FaceColor','texturemap');
 hold on;      %# Add to the plot
 
 img = imread('C:\Rahul\schooll5.png');     %# Load a sample image
xImage = [(i/4)+k (i/4)+k;(i/4)+k (i/4)+k];
yImage = [-(j/2)+l (j/2)+l;-(j/2)+l (j/2)+l];    %# The x data for the image corners            %# The y data for the image corners
zImage = [(i/2)+(i/4) (i/2)+(i/4);(i/2) (i/2)];   %# The z data for the image corners
 hold on;  
 surf(xImage,yImage,zImage,...    %# Plot the surface
     'CData',img,...
     'FaceColor','texturemap');
 hold on;      %# Add to the plot
 
 img = imread('C:\Rahul\schooll5.png');     %# Load a sample image
xImage = [(i/2)+k (i/2)+k;(i/2)+k (i/2)+k];
yImage = [-(j/2)+l (j/2)+l;-(j/2)+l (j/2)+l];    %# The x data for the image corners            %# The y data for the image corners
zImage = [(i/2)+(i/4) (i/2)+(i/4);(i/2) (i/2)];   %# The z data for the image corners
 hold on;  
 surf(xImage,yImage,zImage,...    %# Plot the surface
     'CData',img,...
     'FaceColor','texturemap');
 hold on;      %# Add to the plot
 
 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
 %%chimney
 k=k+(i/4);
 img = imread('C:\Rahul\factory7.png');     %# Load a sample image
xImage = [-(i/16)+k (i/16)+k;-(i/16)+k (i/16)+k];   %# The x data for the image corners
yImage = [-(j/16)+l -(j/16)+l;-(j/16)+l -(j/16)+l];             %# The y data for the image corners
zImage = [ 2*i 2*i; 0 0];   %# The z data for the image corners
 hold on;  
 surf(xImage,yImage,zImage,...    %# Plot the surface
     'CData',img,...
     'FaceColor','texturemap');
 hold on;      %# Add to the plot

img = imread('C:\Rahul\factory7.png');     %# Load a sample image
xImage = [(i/16)+k (i/16)+k;(i/16)+k (i/16)+k]; 
yImage = [-(j/16)+l (j/16)+l;-(j/16)+l (j/16)+l];   %# The x data for the image corners            %# The y data for the image corners
zImage = [ 2*i 2*i; 0 0];%# The z data for the image corners
 hold on;  
 surf(xImage,yImage,zImage,...    %# Plot the surface
     'CData',img,...
     'FaceColor','texturemap');
 hold on;      %# Add to the plot
 
 img = imread('C:\Rahul\factory7.png');     %# Load a sample image
xImage = [-(i/16)+k (i/16)+k;-(i/16)+k (i/16)+k];   %# The x data for the image corners
yImage = [(j/16)+l (j/16)+l;(j/16)+l (j/16)+l];              %# The y data for the image corners
zImage = [ 2*i 2*i; 0 0]; %# The z data for the image corners
 hold on;  
 surf(xImage,yImage,zImage,...    %# Plot the surface
     'CData',img,...
     'FaceColor','texturemap');
 hold on;      %# Add to the plot
 
 
 img = imread('C:\Rahul\factory7.png');     %# Load a sample image
xImage = [-(i/16)+k -(i/16)+k;-(i/16)+k -(i/16)+k];
yImage = [-(j/16)+l (j/16)+l;-(j/16)+l (j/16)+l];    %# The x data for the image corners            %# The y data for the image corners
zImage = [ 2*i 2*i; 0 0];  %# The z data for the image corners
 hold on;  
 surf(xImage,yImage,zImage,...    %# Plot the surface
     'CData',img,...
     'FaceColor','texturemap');
 hold on;      %# Add to the plot
 
 
 