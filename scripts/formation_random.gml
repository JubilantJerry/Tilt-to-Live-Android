var myEnemy, chooser, leftlimit, rightlimit, toplimit, bottomlimit, centerx, centery;
leftlimit = ARENA_LEFTBOUND + global.roomShift + ENEMY_RADIUS
rightlimit = ARENA_RIGHTBOUND + global.roomShift - ENEMY_RADIUS
toplimit = ARENA_TOPBOUND + ENEMY_RADIUS
bottomlimit = ARENA_BOTTOMBOUND - ENEMY_RADIUS
centerx = GAME_WIDTH / 2 + global.roomShift
centery = GAME_HEIGHT / 2

repeat(15) {
           chooser=choose(1,2)
           if chooser=1 then myEnemy = instance_create(random_range(leftlimit,rightlimit),choose(toplimit,bottomlimit),enemy_spawn)
           if chooser=2 then myEnemy = instance_create(choose(leftlimit,rightlimit),random_range(toplimit,bottomlimit),enemy_spawn)
           with myEnemy event_user(0);
           myEnemy.myDirection = point_direction(myEnemy.x,myEnemy.y,centerx,centery)+random_range(-45,45)
           myEnemy.mySpeedRatio = -1.5
           myEnemy.ignoreBorder = true
           }
