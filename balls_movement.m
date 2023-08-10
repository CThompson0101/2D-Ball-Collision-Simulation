function  balls_movement(obj, addx,addy,xc,yc, w, h, rad) 
n = numel(obj);  %Number of balls i.e for n number of balls
while all((xc >=0 & xc <= w) & (yc >= 0 & yc <= h)) %while xc and yc positions of the balls are within the window;
       
        for k = 1:n %For n number of balls,
            
           %Updates positions of the kth ball
            xMove(obj(k),addx(k))   %a function that moves the ball in the x-direction
            yMove(obj(k),addy(k))   %a function that moves the ball in the y-direction
            
            %For the bouncing on the sides of the wall,
            [xc(k), yc(k)]=getCenter(obj(k));   %Finds the center of the ball(s)
            
            if yc(k) >= h - rad %If the y position is at the top edge which is (Height - Radius of ball) 
              addy(k) = -addy(k);  %The velocity component is negative which makes the ball move in the opposite direction
              set(obj(k),'FaceColor','c') %Changes the color to cyan when it hits the ball
            end

            if yc(k) <= rad     %If the y position is at the bottom edge which is (Radius of ball)
              addy(k) = -addy(k); %The velocity component is negative which makes the ball move in the opposite direction
              set(obj(k),'FaceColor','m') %Changes the color to magenta when it hits the ball
            end

            if xc(k) >= w - rad    %If the x position is at the right edge which is (Width - Radius of ball)
              addx(k) = -addx(k);  %The velocity component is negative which makes the ball move in the opposite direction
              set(obj(k),'FaceColor','g') %Changes the color to black when it hits the ball
            end

            if xc(k) <= rad    %If the x position is at the left edge which is (Radius of ball)
              addx(k) = -addx(k);  %The velocity component is negative which makes the ball move in the opposite direction
              set(obj(k),'FaceColor','y') %Changes the color to black when it hits the ball
            end
        end

   %For the collision with other balls
for i=1:n  %For the collision of the first ball,
    for j=i+1:n   %For the collision of the second ball,
        if sqrt(((((xc(i))-(xc(j)))^2)+(((yc(i))-(yc(j)))^2)))<=(2*(rad)); %if the distance is less than two times the radius
            %There is a collision between ball one and ball two
 
            u=addy(i);    %'u' represents the value of 'addy(i)' for the swapping purpose of their velocities
            addy(i)=addy(j);  %as to reverse direction when they collide
            addy(j)=u;
            set(obj(i),'FaceColor','r')    %Changes the objects color to red when ball one collides with ball two
 
            v=addx(i);    %'v' represents the value of 'addx(i)' for the swapping purpose of their velocities
            addx(i)=addx(j);  %as to reverse the direction when they collide
            addx(j)=v;
            set(obj(j),'FaceColor','b')    %Changes the objects color to blue when ball two collides with ball one
        end
    end
end
         
       
    redraw %Runs redraw function to graphically update position of the balls at every given point in time
       
end
   
end