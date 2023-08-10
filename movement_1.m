function  movement_1(b_2, addx,addy,xc_2,yc_2, w_1, h_1, rad_1) 
%obj is the name of the ball. obj(1) is the first ball, obj(2) is the second, etc
%addx and addy determines the movement of the ball
%x & y is the current coordinate of the ball's center. 
%w and h is the width and height
%rad is the radius of the ball
    n = numel(b_2);  %Number of balls
    
    while all((xc_2 >=0 & xc_2 <= w_1) & (yc_2 >= 0 & yc_2 <= h_1)) %while x and y positions of the balls are within the window
        
        for k = 1:n %runs according to how many balls are present
            
            %Bouncing on the sides of the wall
            [xc_2(k), yc_2(k)] = getCenter(b_2(k)); 
            
            if yc_2(k) >= h_1 - rad_1 %If the y position is at the top edge which is (Height - Radius of ball) 
              addy(k) = -addy(k);
            end
            if yc_2(k) <= rad_1
              addy(k) = -addy(k); %If the y position is at the bottom edge which is (Radius of ball) 
            end
            if xc_2(k) >= w_1 - rad_1 %If the x position is at the right edge which is (Width - Radius of ball)
              addx(k) = -addx(k);
            end
            if xc_2(k) <= rad_1 %If the x position is at the left edge which is (Radius of ball)
              addx(k) = -addx(k);
            end
            
            %Updates positions of the kth ball
            xMove(b_2(k),addx(k)) 
            yMove(b_2(k),addy(k)) 
            
            %CODE TO DETERMINE COLLISION AND BOUNCE
      
        end
        
    redraw %Runs redraw function to graphically update position of the balls
    
    end
   
end