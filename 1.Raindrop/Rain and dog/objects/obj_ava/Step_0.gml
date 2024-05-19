if (keyboard_check(ord("D"))) {
	x += avatar_speed;
	sprite_index = Avatar_move
}
if (keyboard_check(ord("A"))) {
	x -= avatar_speed;
	sprite_index = Avatar_move
}
if (keyboard_check(vk_nokey))sprite_index = Avatar;


if (place_meeting(x,y,obj_drop)||place_meeting(x,y,obj_dog)) {
	x = xstart;
	y = ystart;
	
	
}

if (place_meeting(x,y,obj_door)) {
	x = xstart;
	y = ystart;
	avatar_point += 1;
	global.player_points = avatar_point;
}

if(global.player_points = 10 && place_meeting(x,y,obj_door)){
	
}
