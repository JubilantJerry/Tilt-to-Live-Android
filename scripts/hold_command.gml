//hold_command(command, holdtime, command parameters)

player_oldx=player.x
player_oldy=player.y


if argument[0]="target" {
myDirection=999
target_x=argument[2]
target_y=argument[3]
error_x=argument[4]
error_y=argument[5] }

if argument[0]="direction" {
myDirection=999
target_direction=argument[2]
error_angle=argument[3] }

//if argument0 = "continue" then change nothing

alarm[11]=argument[1]
holdtime=argument[1]
