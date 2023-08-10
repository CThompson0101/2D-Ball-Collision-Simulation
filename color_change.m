function b=color_change(n)
for i=1:n  %n number of balls
z=randi(6);
if z==1
    b=char('w'); %Ball changes to white color
elseif z==2
    b=char('g'); %Ball changes to green color
elseif z==3
    b=char('y'); %Ball changes to yellow color
elseif z==4
    b=char('b'); %Ball changes to blue color
elseif z==5
    b=char('m'); %Ball changes to magenta color 
elseif z==6
    b=char('c'); %Ball changes to cyan color
end
end