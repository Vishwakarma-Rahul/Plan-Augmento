%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
clc;
close all;
clear;
workspace;
format long g;
format compact;
fontSize = 20;
%grayImage = imread('F:\images_final\circle_ps.jpg');
grayImage = imread('C:\Rahul\FinalPlan3.png'); %rect17 for PA2 and PA3 %FinalPlan.png for demo %PlanTrain.png for train
%grayImage = imread('C:\Users\lenovo\Desktop\pa\plan.jpg');

%grayImage=im2bw(grayImage, 0.4);

[rows, columns, numberOfColorBands] = size(grayImage);
if numberOfColorBands > 1
	grayImage = grayImage(:, :, 2);
end
subplot(2, 1, 1);
imshow(grayImage, []);
title('Original Grayscale Image', 'FontSize', fontSize, 'Interpreter', 'None');
set(gcf, 'Units', 'Normalized', 'OuterPosition', [0 0 1 1]);
set(gcf, 'Toolbar', 'none', 'Menu', 'none');
set(gcf, 'Name', 'Demo by Rahul Vishwakarma', 'NumberTitle', 'Off') 
binaryImage = grayImage > 128;
binaryImage = imclearborder(binaryImage);
binaryImage = bwareaopen(binaryImage, 1000);
subplot(2, 1, 2);
imshow(binaryImage, []);
title('Binary Image', 'FontSize', fontSize, 'Interpreter', 'None');
labeledImage = bwlabel(binaryImage, 8);
% Get all the blob properties.  Can only pass in originalImage in version R2008a and later.
[labeledImage, numberOfBlobs] = bwlabel(binaryImage);
blobMeasurements = regionprops(labeledImage, 'perimeter','area','MajorAxisLength','MinorAxisLength' ,'Centroid', 'BoundingBox');
%Get all the perimeters
allp=[blobMeasurements.Perimeter];
%Get Major axis
allma=[blobMeasurements.MajorAxisLength];
%Get Minor axis
allmi=[blobMeasurements.MinorAxisLength];
% Get all the areas
allAreas = [blobMeasurements.Area] % No semicolon so it will print to the command window.
menuOptions{1} = '0'; % Add option to extract no blobs.
% Display areas on image
%c=zeros(1,numberofBlobs);
%xy_width=[blobMeasurements.BoundingBox];
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
xy_width=[blobMeasurements.BoundingBox];
char A=0;
D=' ';
B=char(D);

for m=1:numberOfBlobs
k=blobMeasurements(m).Centroid(1); %shifting factor for x axis %x coordinate of centroid
l=blobMeasurements(m).Centroid(2); %shifting factor for y axis %y coordinate of centroid

a=k-17;
b=l-22;

%{
i=allma(m);
j=allmi(m);
i=i/1.15;
j=j/1.15;
%}

%function OCR=OCR()
%warning off %#ok<WNOFF>
% Clear all
%clc, close all, clear all
% Read image
%imagen=imread('C:\Rahul\rect11.png');
%imagen=imcrop(imagen,[a b 35 55]);%xmin,ymin,width,height
%imagen=imcrop(imagen);

imagen=imcrop(grayImage,[a b 35 55]);%xmin,ymin,width,height
% Show image
imagen1 = imagen;
%figure,
%imshow(imagen1);
%title('INPUT IMAGE WITH NOISE')
% Convert to gray scale
if size(imagen,3)==3 %RGB image
    imagen=rgb2gray(imagen);
end
% Convert to BW
threshold = graythresh(imagen);
imagen =~im2bw(imagen,threshold);
imagen2 = imagen;
%figure,imshow(imagen2);
% title('before bwareaopen')
% Remove all object containing fewer than 15 pixels
imagen = bwareaopen(imagen,15);
imagen3 = imagen;
%figure,imshow(imagen3);
%title('after bwareaopen')
%Storage matrix word from image 
word=[ ];
re=imagen;
%Opens text.txt as file for write
fid = fopen('text.txt', 'wt');
%Load templates
load templates
global templates
% Compute the number of letters in template file
num_letras=size(templates,2);
while 1
    %Fcn 'lines_crop' separate lines in text
    [fl re]=lines_crop(re); %fl= first line, re= remaining image
    imgn=fl;
    n=0;
    %Uncomment line below to see lines one by one
    %figure,imshow(fl);pause(2)  
    %-----------------------------------------------------------------
    
    spacevector = [];      % to compute the total spaces betweeen
                           % adjacent letter
    rc = fl;              
   
    while 1
        %Fcn 'letter_crop' separate letters in a line
       [fc rc space]=letter_crop(rc);  %fc =  first letter in the line
                                       %rc =  remaining cropped line
                                       %space = space between the letter
                                       %   cropped and the next letter
       %uncomment below line to see letters one by one
       %figure,imshow(fc);pause(0.5)
       img_r = imresize(fc,[42 24]);   %resize letter so that correlation
                                       %can be performed
       n = n + 1;
       spacevector(n)=space;
       
       %Fcn 'read_letter' correlates the cropped letter with the images
       %given in the folder 'letters_numbers'
       letter = read_letter(img_r,num_letras);
       
       %letter concatenation
       word = [word letter];
       
       if isempty(rc)  %breaks loop when there are no more characters
           break;
        end
    end
    
        %-------------------------------------------------------------------
        
        %
    max_space = max(spacevector);
    no_spaces = 0;
    
     for x= 1:n   %loop to introduce space at requisite locations
       if spacevector(x+no_spaces)> (0.75 * max_space)
          no_spaces = no_spaces + 1;
            for m = x:n
              word(n+x-m+no_spaces)=word(n+x-m+no_spaces-1);
            end
           word(x+no_spaces) = ' ';
           spacevector = [0 spacevector];
       end
     end
   
            
    %fprintf(fid,'%s\n',lower(word));%Write 'word' in text file (lower)
    fprintf(fid,'%s\n',word);%Write 'word' in text file (upper)
    % Clear 'word' variable
    word=[ ];
    %*When the sentences finish, breaks the loop
    if isempty(re)  %See variable 're' in Fcn 'lines'
        break
    end
end
fclose(fid);
%Open 'text.txt' file
%winopen('text.txt')
%p=text.Text;
%clear all


%A=importdata('C:\Rahul\college work\OCR\OCR my version\text.txt');
A = fopen('C:\Rahul\college work\OCR\OCR my version\text.txt','r');
C = char(A);
fclose(A);
B = [B ' ' C];
disp(B);

end

%xy_width=[blobMeasurements.BoundingBox];

figure,
%imshow(grayImage);
for u=1:numberOfBlobs
    
k=blobMeasurements(u).Centroid(1); %shifting factor for x axis %x coordinate of centroid
l=blobMeasurements(u).Centroid(2); %shifting factor for y axis %y coordinate of centroid

a=k-17;
b=l-22;


i=xy_width(1,3+(u-1)*4);
j=xy_width(1,4+(u-1)*4);

%{
i=allma(u);
j=allmi(u);
i=i/1.15;
j=j/1.15;
%}

    
    E=B(2*u+1);
    
    switch E
    case 'H'
    run('PAH.m')
    
    case 'B'
    run('PAB.m')
    
    case 'S'
    run('PAS.m')
    
    case 's'
    run('PAS.m')
    
    case 'M'
    run('PAM.m')
    
    case 'F'
    run('PAF.m')
    
    case 'f'
    run('PAF.m')
    
    case 'O'
    run('PAO.m')
    
    case '0'
    run('PAO.m')
    
    case 'o'
    run('PAO.m')
    
    case 'k'
    run('PARB.m')
    
    case 'K'
    run('PARB.m')
    
    case 'R'
    run('PARD.m')
    
    case 'T'
    run('PAT.m')
    
    case 'P'
    run('PAP.m')
    
    case 'p'
    run('PAP.m')
    
    case 'E'
    run('PABD.m')
    
    otherwise 
    run('PAG.m')
            
    end
    
end

%I = imread('C:\Rahul\schooll5.png');     %# Load a sample image
%imshow(I);
imshow(grayImage);

