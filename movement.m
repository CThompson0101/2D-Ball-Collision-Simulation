function  movement(b_1,addx,addy,xc,yc, w, h,rad)
%obj is the name of the ball. obj(1) is the first ball, obj(2) is the second, etc
%addx and addy determines the movement of the ball
%x & y is the current coordinate of the ball's center. 
%w and h is the width and height
%rad is the radius of the ball
     n= numel(b_1)%Number of balls
    
    while all((xc >=0 & xc <= w) & (yc >= 0 & yc <= h)) %while x and y positions of the balls are within the window
        
        for k = 1:n 
%runs according to how many balls are present
            
            %Bouncing on the sides of the wall
            [xc(k), yc(k)] = getCenter(b_1(k)); 
            
            if (yc(k) >= h - rad) %If the y position is at the top edge which is (Height - Radius of ball) 
              addy(k) = -addy(k);
            end
            if (yc(k) <= rad) 
              addy(k) = -addy(k); %If the y position is at the bottom edge which is (Radius of ball) 
            end
            if (xc(k) >= w - rad)%If the x position is at the right edge which is (Width - Radius of ball)
              addx(k) = -addx(k);
            end
            if (xc(k) <= rad) %If the x position is at the left edge which is (Radius of ball)
              addx(k) = -addx(k);
            end
            
            %Updates positions of the kth ball
            xMove(b_1(k),addx(k)) 
            yMove(b_1(k),addy(k)) 
           
            
            %CODE TO DETERMINE COLLISION AND BOUNCE
      
            end
        end
        
    redraw %Runs redraw function to graphically update position of the balls
    
    end
   
