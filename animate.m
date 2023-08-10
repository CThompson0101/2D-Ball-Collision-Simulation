%m.calculation- a program that does a ball simulation
%Christian Thompson
%AE 227 Project
%5th April 2019
close all
clear all
clc

%To choose input or to read from a file,
fprintf('\nMenu:\n1.Read data from a file\n2.Use the input option\n3.End the Program\n\n');  %displays menu at the command window
action=input('Enter your preferred choice: ');   %Enter your preferred choice
if action~=0
    if action==1
        disp('***Please enter the name of the file plus its extension! ')   %To type in file name with extension
        name=input('Enter the name of the file you want to read: ','s');
        fid=fopen(name,'r');
        alldata=fscanf(fid,'%g',[1,inf])';   %Reads one data at a time 
        fclose(fid);  %Closes the file
        w=alldata(1,:);    %allocating width(w) to be in a form of a matrix
        h=alldata(2,:);    %allocating height(h) to be in a matrix form
        rad=alldata(3,:);  %The common radius of a cycle 
        sum=length(alldata(4:end,:));
        n=sum/2;            %Tells the number of balls that is to be used
        a=alldata(4:end);   %collects all data for the x-coordinate and y-coordinate of the matrix
        xc = a(1:2:end,:);  % to select an odd matrix 
        yc = a(2:2:end,:);  % to select an even matrix
        f=createWindow(w,h); %To create a window using the parameters above
        fprintf('The number of balls is %d and the common radius of the balls is %d\n\r',n,rad)
        ay=gca;  
        ay.YColor='red';   %To make the color of the axis red 
        ax = gca;
        ax.XColor ='blue';  %To make the color of the axis blue
        set(gca, 'color', [1 1 1])           %Changes the plot color to white
        fig = gcf;
        fig.Color = [0 0 0];                 %Changes the background to black
        txt='AE 227';                        %To set a text file of AE 227
        t=text(190,h/2,txt,'FontSize',30);    %To set the FontSize of the text to be 30
        set(t,'FontName','Agency FB')        %To set the font name of the text to be 'Agency FB'
        set(t,'Color','b')                   %To set the color of the text to be blue
for i=1:n         %For n number of balls
    addx(i)=1;    %addx(i) is the velocity component in the x-direction 
    addy(i)=1;    %addy(i) is the velocity component in the y-direction
    col=input('Enter the color of the ball: ','s');     %The color of the balls in the program
    obj(i)=drawBall(xc(i),yc(i),rad,col);               %Draws the number of balls in the program
    fprintf('The x-coordinate and y-coordinate of the %d ball is %d and %d with a color %s\n\r',i,xc(i),yc(i),col)
end 
    
    balls_movement(obj, addx,addy,xc,yc, w, h, rad)  %Main function of the program that controls the ball's motion

    
elseif action==2     %If your choice is user defined
%To create a window of w as the width and h as height
w=input('Enter the width of the window in units: ');  %input for the width
h=input('Enter the height of the window in units: '); %input for the height
fprintf('The width and height of the window is %d and %d respectively\n\r',w,h)  %To print the result to the command window
f=createWindow(w,h); %To create a window using the parameters above

%To determine the number of balls,
n=input('Enter the number of balls: '); %For 'n' number of balls
%Assuming the radius of all balls to be equal,
rad=input('Enter the radius of the ball(s): ');  %For all n number of balls
%Assuming each ball move with equal velocity,
fprintf('The number of balls is %d and the common radius of the balls is %d\n\r',n,rad)

ay=gca;
ay.YColor='red';   %To make the color of the axis red 
ax = gca;
ax.XColor ='blue';  %To make the color of the axis blue
 
for i=1:n %For n number of balls
    addx(i)=1;  %addx(i) is the velocity component in the x-direction 
    addy(i)=1;  %addy(i) is the velocity component in the y-direction
    xc(i)=input('Enter the x-coordinate of the ball: ');  %the x-coordinate for n number of balls xc(1), xc(2)...xc(n) 
    yc(i)=input('Enter the y-coordinate of the ball: ');  %the y-coordinate for n number of balls yc(1), yc(2)...yc(n)
    col=input('Enter the color of the ball: ','s');       %The color of the balls in the program
    obj(i)=drawBall(xc(i),yc(i),rad,col);                 %Draws the number of balls in the program
    fprintf('The x-coordinate and y-coordinate of the %d ball is %d and %d with a color %s\n\r',i,xc(i),yc(i),col)
end 

set(gca, 'color', [1 1 1])  %Changes plot color to white
fig = gcf;
fig.Color = [0 0 0];        %Changes background color to black
txt='AE 227';               %To set a text file of AE 227
        t=text(190,h/2,txt,'FontSize',30);    %To set the FontSize of the text to be 30
        set(t,'FontName','Agency FB')        %To set the font name of the text to be 'Agency FB'
        set(t,'Color','b')                   %To set the color of the text to be blue
balls_movement(obj, addx,addy,xc,yc, w, h, rad)   %Main function of the program that controls the ball's motion

    elseif action==3    %To put an end to the program,
        fprintf('***This is the end of the program!!\n')
    end
end