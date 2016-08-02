var angle, distance, pangle, pdistance, ratio, anglediff, offset;
angle = point_direction(player.x,player.y,x,y)
distance = point_distance(x,y,player.x,player.y)
pangle = point_direction(player_oldx,player_oldy,player.x,player.y)
pdistance = point_distance(player_oldx,player_oldy,player.x,player.y)


/*   
      offset = radtodeg(arcsin( min(1,pdistance/(holdtime*max(speed,0.01)) * sin(degtorad(angle_difference(angle,pangle)))) ))
      return sign(convert_to_360(angle)-convert_to_360(pangle))*offset + point_direction(x,y,player.x,player.y)
*/

ratio = (pdistance / holdtime) / (control.diff*abs(mySpeedRatio))
anglediff = degtorad(angle_difference(angle,pangle))
offset = radtodeg( arcsin( min(1, ratio * sin(anglediff)) ) )
return convert_to_360( sign(angle-pangle)*offset + angle + 180 )




