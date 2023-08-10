Christian Thompson
AE 227 Project
Readme.txt file
8 April, 2019

---------------------------
Description of the program
---------------------------

The program is an animation of a ball colliding with the walls and other balls.
It is done by matlab and has various applications. For example, it can be used in physics,
to tell the velocity or time when the balls are going to collide. It is made to work for any 
number and size of balls. It also simultes frictional collisions against arbitrary surfaces i.e,
surfaces of balls and walls. The program is in two major forms, the data input that is to read
a program from a file and the second is the user input. The user can input a list of various 
things like height, width, color of the ball, the position of the ball(s) and so on. The program
also supports the theory of collision (total momentum is conserved) both during collision and
after collision. Using the aid of functions like xMove, yMove, getCenter, drawBall, createWindow,
this matlab program simply simulates the collision of balls.
--------------------------------------------------------------------------------------------------

--------------------
Ball-Ball Algorithm
--------------------

In this project, there is a lot of ball-ball collision. The algorithim of the ball-ball collision
is as follows;
First we initialize the horizontal component and vertical component of the velocity in the x and y
dierctions for n number of balls.
addx(n)=1  %The velocity component in the x-direction and
addy(n)=1  %The velocity component in the y-direction
Next, specify the range the ball-ball collision
while all((xc >=0 & xc <= w) & (yc >= 0 & yc <= h)) %while xc and yc positions of the balls are within the window
simulate collision for the first ball to collide,
for i=1:n  %For the collision of the first ball,
for j=i+1:n   %For the collision of the second ball,
The condition is that if the distance is less than or equals the two times the radius,
it collides.
The distance formular is sqrt(((((xc(i))-(xc(j)))^2)+(((yc(i))-(yc(j)))^2)))<=(2*(rad)) for n number of balls
if it meets the requirement, the balls collide.
To avoid overlapping,
for the vertical component,
u=addy(i);  'u' represents the value of 'addy(i)' for the swapping purpose of their velocities when they collide
addy(i)=addy(j);   To reverse their direction when they collide
addy(j)=u swapping velocity is complete at this point.
set(obj(i),'FaceColor','r')    Changes the objects color to red when ball one collides with ball two for beautification
repeat the process in the x-direction so as to avoid overlapping.
Update the position of the n number of ball using the xMove and yMove
xMove(obj(k),addx(k))   %a function that moves the ball in the x-direction
yMove(obj(k),addy(k))   %a function that moves the ball in the y-direction
redraw runs redraw function to graphically update position of the balls at every given point in time
-------------------------------------------------------------------------------------------------------------------------

---------------------
Ball-Wall Algorithim
---------------------

For ball-wall collision, the algorithim of the ball-wall collisions is as follows;
First we initialize the horizontal component and vertical component of the velocity in the x and y directions
for n number of balls.
addx(n)=1  %The velocity component in the x-direction and
addy(n)=1  %The velocity component in the y-direction.
Next, specify the range the ball-ball collision
while all((xc >=0 & xc <= w) & (yc >= 0 & yc <= h)) %while xc and yc positions of the balls are within the window
When complete find the center of the ball using getCenter function so that you can constrain its movement
There are four conditions that you have to concentrate on.
The first condition is if y-coordinate is greater than or equal to the (Height - radius)
addy(n)=-addy(n) The velocity component is negative which makes it to move in the opposite direction; end the if function
The second condition is if y-coordinate is less than equal to the radius that is If the y position is at the bottom edge which is (Radius of ball)
addy(n)=-addy(n) The velocity component is negative which makes it to move in the opposite direction; end the if function
For the third condition is if x-coordinate is greater than or equal to width minus radius.
addx(n)=-addx(n) The velocity component is negative which makes it to move in the opposite direction; end the if function
For the fourth condition is is x-coordinate is if less than or equal to radius
addx(n)=-addx(n) The velocity component is negative which makes it to move in the opposite direction; end the if function 
you can set the color by using the set(obj(k),'FaceColor','color').
Update the position of the n number of ball using the xMove and yMove
xMove(obj(k),addx(k))   %a function that moves the ball in the x-direction
yMove(obj(k),addy(k))   %a function that moves the ball in the y-direction
redraw runs redraw function to graphically update position of the balls at every given point in time
-------------------------------------------------------------------------------------------------------------------------

-------------------
List of Functions
-------------------
--------------------------------------------------------------
1. function  balls_movement(obj, addx,addy,xc,yc, w, h, rad) 
--------------------------------------------------------------

For this program, the function that was wriiten is the balls_movement function
This function is written as function;  balls_movement(obj, addx,addy,xc,yc, w, h, rad) 
The input to this function is given as 
obj=the name of the object in the function
addx=velocity component in the x-component
addy=velocity component in the y-component
xc=x-coordinate of the ball
yc=y-coordinate of the ball
w=width of the window 
h=height of the window
rad=radius of the ball
The output of this function is that it controls the motion of the ball as it collides with the walls and the walls
At the end of this function, it makes the ball move in the right manner as described in the program
--------------------------------------------------------------------------------------------------------------------

--------------------
Additional comments
--------------------

In this program, there are other defined things like the color of the background, the color of the axis and the way the 
balls changes color as it collides with itself and with the walls.
 