var distance, defensenearest, offensenearest, randomnum;
distance = point_distance(x,y,player.x,player.y)
randomnum = random_range(0, 2*pi)

//dots near a fire trail
if distance_to_object(AoE_burnicade) < 120 {
    error_angle = choose(-93,93)
    myDirection= point_direction(x,y,instance_nearest(x,y,AoE_burnicade).x,instance_nearest(x,y,AoE_burnicade).y) + error_angle
    hold_command("continue",5)
    behavior="trace"
    exit}
    
//dots in front of player
if angle_difference(point_direction(player.x,player.y,x,y),point_direction(player_oldx,player_oldy,player.x,player.y))<30 and distance < 300{
    
    hold_command("direction",60,find_crash_angle(),0)
    behavior="crash"
    exit

}

defensenearest = defensiveorb_nearest("object")
    //dots near defensive orb
if point_distance(player.x,player.y,defensenearest.x,defensenearest.y) < 200 and point_distance(player.x,player.y,defensenearest.x,defensenearest.y) > 70 and defensiveorb_nearest("distance") < 180 {
        if choose(1,2)=1 {
        hold_command("direction",30,point_direction(x,y,player.x,player.y),random_range(-1,1)*min(60,1200/distance+5))
        behavior="shotgun"
        exit
    }
    else {
        hold_command("target",30,defensenearest.x,defensenearest.y,25*cos(randomnum), 25*sin(randomnum))
        behavior="blockorb"
        exit
    }
}
 
offensenearest = offensiveorb_nearest("object")   
//dots near an offensive orb
if point_distance(player.x,player.y,offensenearest.x,offensenearest.y) < 150 and offensiveorb_nearest("distance") < 150 {
    if choose(1,2,3)=1 {
        hold_command("direction",30,point_direction(x,y,player.x,player.y),random_range(-1,1)*min(60,1200/distance+5))
        behavior="shotgun"
        exit
    }
    else {
        hold_command("target",45,offensenearest.x,offensenearest.y,0,0)
        behavior="dodgeorb"
        exit
    }
}

//everyone else within 300 px
if distance<300 {
        hold_command("direction",30,point_direction(x,y,player.x,player.y),random_range(-1,1)*min(60,1200/distance+5))
        behavior="shotgun"
        exit 
}

//all others       
        myDirection=random_range(0,360)
        hold_command("continue",30)
        behavior="roam"
        


