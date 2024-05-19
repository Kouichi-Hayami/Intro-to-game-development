if keyboard_check(ord("D")){
	x += walk_speed;
}

if keyboard_check(ord("A")){
	x -= walk_speed;
}

if keyboard_check(ord("W")) {
	y -= walk_speed;
}

if keyboard_check(ord("S")) {
	y += walk_speed;
}

if (place_meeting(x,y,obj_lava) && !invincible){
	avatarhp -= 1
	invincible = true;
	global.player_hp = avatarhp
	}
if (place_meeting(x,y,obj_ene) && !invincible){
	avatarhp -= 1
	invincible = true;
	global.player_hp = avatarhp
	}
	
if (invincible){
	invincible_timer ++;
	if (invincible_timer > invincible_duration)
	{
		invincible = false
		invincible_timer = 0
	}
}
if (avatarhp == 0){
	game_restart();
	global.player_hp = 10
	global.player_score = 0
}

if (place_meeting(x,y,obj_sword))
{
	sprite_index = spr_avasword
	
	
	
}

if (sprite_index == spr_avasword && keyboard_check_pressed((vk_space))) {
    sprite_index = spr_ext
	
}

if (sprite_index == spr_ext && keyboard_check_released((vk_space))) {
    sprite_index = spr_avasword
	
	}





