num = irandom_range(1,100)
if num <3 {
	xp = irandom_range(30,1300)
	yp = 100
	abc=instance_create_layer(xp,yp,"Instances",obj_drop)
	abc.speed = 8
	abc.direction = 270
	if(global.player_points >= 5){
	angle1 = irandom_range(230,240)
	angle2 = irandom_range (280,310)
	
	abc.direction = irandom_range(angle1,angle2);
	}
}
