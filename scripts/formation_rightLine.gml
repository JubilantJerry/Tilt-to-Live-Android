var myEnemy, ypos, leftlimit, toplimit;
rightlimit = ARENA_RIGHTBOUND + global.roomShift - ENEMY_RADIUS
toplimit = ARENA_TOPBOUND + ENEMY_RADIUS
bottomlimit = ARENA_BOTTOMBOUND - ENEMY_RADIUS
ypos=toplimit
recycle_enemy(40)
repeat(40) {
           myEnemy = instance_create(rightlimit,ypos,enemy_spawn)
           with myEnemy event_user(0);
           myEnemy.myDirection = -180
           myEnemy.mySpeedRatio = 1
           ypos += (bottomlimit - toplimit) / 41
           }
