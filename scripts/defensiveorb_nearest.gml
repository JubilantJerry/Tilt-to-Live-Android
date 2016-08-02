var ice, burn, spikes, shield, distance;

ice = instance_nearest(x,y,powerup_ice)
burn = instance_nearest(x,y,powerup_burnicade)
spikes = instance_nearest(x,y,powerup_spikes)
shield = instance_nearest(x,y,powerup_shield)

distance = min(distance_to_object(ice),distance_to_object(burn),distance_to_object(spikes),distance_to_object(shield))

if argument0="distance" then return distance

if distance = distance_to_object(ice) then return ice
if distance = distance_to_object(burn) then return burn
if distance = distance_to_object(spikes) then return spikes
if distance = distance_to_object(shield) then return shield
