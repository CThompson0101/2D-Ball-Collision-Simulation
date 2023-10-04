# AE 227 Project

## Description

This project involves the simulation of ball collisions within a defined environment. Implemented in Matlab, the program serves multiple purposes, including applications in physics to calculate velocities and collision times. It's designed to handle any number and size of balls, and can simulate frictional collisions against various surfaces, both walls and other balls. The program offers two primary forms: data input from a file, and user input. Users can specify parameters such as ball dimensions, positions, and colors. Additionally, the program adheres to collision theory (conservation of total momentum) during and after collisions.

## Ball-Ball Algorithm

This aspect of the project focuses on handling collisions between balls. The algorithm follows these steps:

1. Initialize velocity components in the x and y directions for each ball.
2. Define the range for potential ball-ball collisions.
3. Simulate collisions, checking distances between balls and their radii.
4. If a collision occurs, adjust velocities to avoid overlap and update ball positions.
5. Repeat steps for x-direction to prevent further overlap.
6. Redraw the simulation for each time step.

## Ball-Wall Algorithm

This part addresses collisions between balls and walls. The algorithm is as follows:

1. Initialize velocity components in the x and y directions for each ball.
2. Define the range for potential ball-wall collisions.
3. When complete, find the center of each ball to constrain its movement.
4. Apply conditions for different collision scenarios (e.g., top, bottom, left, right edges).
5. Adjust velocities and positions accordingly to avoid overlap.
6. Redraw the simulation for each time step.

## List of Functions

### balls_movement(obj, addx,addy,xc,yc, w, h, rad)

This function controls the motion of balls during collisions with both walls and other balls.

- `obj`: Object name
- `addx`: Velocity component in the x-direction
- `addy`: Velocity component in the y-direction
- `xc`: x-coordinate of the ball
- `yc`: y-coordinate of the ball
- `w`: Width of the window
- `h`: Height of the window
- `rad`: Radius of the ball

---

*Note: This summary provides an overview of the project, its algorithms, and key functions. For detailed code and further implementation, please refer to the Matlab files in this repository.*
