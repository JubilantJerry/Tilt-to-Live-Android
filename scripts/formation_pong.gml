var leftpaddle, rightpaddle, toplimit, bottomlimit, centerx, centery;
leftpaddle = ARENA_LEFTBOUND + global.roomShift + 2 * ENEMY_RADIUS
rightpaddle = ARENA_RIGHTBOUND + global.roomShift - 2 * ENEMY_RADIUS
toplimit = ARENA_TOPBOUND + ENEMY_RADIUS
bottomlimit = ARENA_BOTTOMBOUND - ENEMY_RADIUS
centerx = GAME_WIDTH / 2 + global.roomShift
centery = GAME_HEIGHT / 2

if instance_number(enemy_pong_ball) + instance_number(enemy_pong_paddle_right) + instance_number(enemy_pong_paddle_left) != 0 {
    with (enemy) {if pong>0 then pong=-2}
    with (enemy_pong_ball) {instance_destroy()}
    with (enemy_pong_paddle_right) {instance_destroy()}
    with (enemy_pong_paddle_left) {instance_destroy()}
    }
    
instance_create(centerx, centery, enemy_pong_ball)
instance_create(rightpaddle, centery, enemy_pong_paddle_right)
instance_create(leftpaddle, centery, enemy_pong_paddle_left)

    
