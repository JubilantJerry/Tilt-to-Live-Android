if instance_number(enemy)>500 {
var myEnemy;

repeat(argument0) {
tries=0
do {
myEnemy=instance_find(enemy,irandom_range(0,instance_number(enemy)))
tries += 1
}
until (myEnemy.new_border=0 or tries=40) and myEnemy.object_index!=enemy_ferax and myEnemy.object_index!=enemy_ferax_spawn

if myEnemy.new_border!=0 then exit

with myEnemy {
 noCombo=1
 instance_create(x,y,enemy_fade)
 instance_destroy() }
 
 }
 }
