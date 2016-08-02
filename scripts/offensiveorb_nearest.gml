var nuke, blast, missiles, lightning, distance;

nuke = instance_nearest(x,y,powerup_nuke)
blast = instance_nearest(x,y,powerup_laser)
missiles = instance_nearest(x,y,powerup_missiles)
lightning = instance_nearest(x,y,powerup_lightning)

distance = min(distance_to_object(nuke),distance_to_object(blast),distance_to_object(missiles),distance_to_object(lightning))

if argument0="distance" then return distance

if distance = distance_to_object(nuke) then return nuke
if distance = distance_to_object(blast) then return blast
if distance = distance_to_object(missiles) then return missiles
if distance = distance_to_object(lightning) then return lightning
