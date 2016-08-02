var myEnemy, xpos, toplimit, bottomlimit, leftlimit;
leftlimit = ARENA_LEFTBOUND + global.roomShift + ENEMY_RADIUS
rightlimit = ARENA_RIGHTBOUND + global.roomShift - ENEMY_RADIUS
toplimit = ARENA_TOPBOUND + ENEMY_RADIUS
bottomlimit = ARENA_BOTTOMBOUND - ENEMY_RADIUS
xpos=leftlimit
recycle_enemy(40)
repeat(20) {
           myEnemy = instance_create(xpos,toplimit,enemy_spawn)
           with myEnemy event_user(0);
           myEnemy.myDirection = -90
           myEnemy.mySpeedRatio = 0.5
           myEnemy = instance_create(xpos,bottomlimit,enemy_spawn)
           with myEnemy event_user(0);
           myEnemy.myDirection = 90
           myEnemy.mySpeedRatio = 0.5
           xpos += (rightlimit - leftlimit) / 19
           }
