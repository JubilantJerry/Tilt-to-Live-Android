var xpos, ypos, myEnemy, leftlimit, rightlimit, toplimit, bottomlimit;
leftlimit = ARENA_LEFTBOUND + global.roomShift + ENEMY_RADIUS
rightlimit = ARENA_RIGHTBOUND + global.roomShift - ENEMY_RADIUS
toplimit = ARENA_TOPBOUND + ENEMY_RADIUS
bottomlimit = ARENA_BOTTOMBOUND - ENEMY_RADIUS
xpos = leftlimit
ypos = toplimit
recycle_enemy(121)
repeat(11) {
    repeat(11) {
            myEnemy = instance_create(xpos,ypos,enemy_spawn)
            with myEnemy event_user(0);
            myEnemy.mySpeedRatio=0.75
            xpos += (rightlimit - leftlimit) / 10
               }
            xpos = leftlimit
            ypos += (bottomlimit - toplimit) / 10
           }

