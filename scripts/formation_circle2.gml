var ang, myEnemy;
ang=0
recycle_enemy(36)
repeat(18) {
           myEnemy=instance_create(player.x+(96*cos(ang)),player.y+(96*sin(ang)),enemy_spawn)
           with myEnemy event_user(0);
           ang+=degtorad(20)
           myEnemy.mySpeedRatio = random_range(0.45,0.55)
           }

ang=0
repeat(18) {
           myEnemy=instance_create(player.x+(112*cos(ang)),player.y+(112*sin(ang)),enemy_spawn)
           with myEnemy event_user(0);
           ang+=degtorad(20)
           myEnemy.mySpeedRatio = random_range(0.50,0.60)
           }
