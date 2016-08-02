/*
Arguments:
arg0: teleport to (1) ball, (2) right paddle, (3) left paddle
arg1: array index 1 (x coords)
arg2: array index 2 (y coords)
*/

/*
Modifications guide:
a = number of dots in the row (x: horizontal, y: vertical)
b = distance between each dot in the row (6 is minimum for a "clean" edge)
coords = control_obj.coords - (a/2 - 0.5)*b + argumentN*b
*/

/*
Also for the sprite mask:
a = number of dots in the row
b = distance between each dot in the row
c = size of dots (default 18)
size = (a+1)*b + c
*/

if argument[0] = 1 then {
   x = enemy_pong_ball.x-9+argument[1]*6
   y = enemy_pong_ball.y-9+argument[2]*6
   speed = enemy_pong_ball.speed
   direction = enemy_pong_ball.direction
} 
if argument[0] = 2 then {
   y = enemy_pong_paddle_right.y-27+argument[2]*6
   speed = enemy_pong_paddle_right.speed
   direction = enemy_pong_paddle_right.direction
}
if argument[0] = 3 then {
   y = enemy_pong_paddle_left.y-27+argument[2]*6
   speed = enemy_pong_paddle_left.speed
   direction = enemy_pong_paddle_left.direction
}
