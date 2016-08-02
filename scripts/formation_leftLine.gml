var myEnemy, ypos, leftlimit, toplimit;
leftlimit = ARENA_LEFTBOUND + global.roomShift + ENEMY_RADIUS
toplimit = ARENA_TOPBOUND + ENEMY_RADIUS
bottomlimit = ARENA_BOTTOMBOUND - ENEMY_RADIUS
ypos=toplimit
recycle_enemy(40)
repeat(40) {
           myEnemy = instance_create(leftlimit,ypos,enemy_spawn)
           with myEnemy event_user(0);
           myEnemy.myDirection = 0
           myEnemy.mySpeedRatio = 1
           ypos += (bottomlimit - toplimit) / 41
           }
