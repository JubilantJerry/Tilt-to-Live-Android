var xpos, ypos, leftlimit, rightlimit, toplimit, bottomlimit;
leftlimit = ARENA_LEFTBOUND + global.roomShift + ENEMY_RADIUS
rightlimit = ARENA_RIGHTBOUND + global.roomShift - ENEMY_RADIUS
toplimit = ARENA_TOPBOUND + ENEMY_RADIUS
bottomlimit = ARENA_BOTTOMBOUND - ENEMY_RADIUS
xpos=leftlimit
ypos=toplimit
recycle_enemy(40)
repeat(10) {
            spawn_enemy_normal(xpos,toplimit)
            spawn_enemy_normal(xpos,bottomlimit)
            xpos+= (rightlimit - leftlimit) / 9
            spawn_enemy_normal(rightlimit,ypos)
            spawn_enemy_normal(leftlimit,ypos)
            ypos+= (bottomlimit - toplimit) / 9
           }
