var pointx,pointy,object,n,list,nearest;

pointx = argument0;
pointy = argument1;
object = argument2;
n = min(max(1,argument3),instance_number(object));
list = ds_priority_create();
nearest = noone;

with (object) ds_priority_add(list,id,distance_to_point(pointx,pointy));
repeat (n) nearest = ds_priority_delete_min(list);

ds_priority_destroy(list);
return nearest;
