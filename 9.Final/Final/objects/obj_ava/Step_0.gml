//Movement
var xMove = keyboard_check(ord("D")) - keyboard_check(ord("A"));
var yMove = keyboard_check(ord("S")) - keyboard_check(ord("D"));

if (xMove !=0 || yMove !=0){
	sprite_index = spr_run
	
} else {
	sprite_index = spr_ava;
}

if (xMove != 0) image_xscale = xMove

x+= xMove * movespeed
y+= yMove * movespeed



if (!jumping && !place_meeting(x,y,obj_ground)) {
	falling = true
}
//If not jumping and not touching the ground, in the position of falling down

if(falling) {
	vertical_velocity += falling_gravity
	//moving downward + the gravity
	
	if(vertical_velocity > falling_max_velocity) vertical_velocity = falling_max_velocity
	//Does not exceed the velocity limit, reset to max
	
	var vertical_check = 10;
	
	if(place_meeting(x,y+vertical_check,obj_ground)){
		vertical_velocity = 0
		
		var floor_instance = instance_place(x,y+vertical_check,obj_ground)
		
		y = floor_instance.y - sprite_height
		//Allow the object and the ground collide smoothly, checking below
		
		falling = false;
		on_floor = true;
		//If hit the ground, set the velocity to zero. No longer falling, now it is on the floor
	}
}

if(on_floor){
	if(keyboard_check_pressed(vk_space)){
	on_floor = false
	jumping = true
	//When on the ground, if I press and released space, can initiate jumping, no longer on the floor
	vertical_velocity -=jump_initital_impulse
	//
	}
}

if(jumping)
{
	if(keyboard_check_pressed(vk_space)){
		vertical_velocity-=jump_accerleration
		//Jumping is true, moving upwards means goes against the y coordinates
	}
	//else jumping = false 
	//
	
	if(vertical_velocity < -jump_max_velocity) vertical_velocity = -jump_max_velocity
	//Set restriction on jumping velocity
	
	jump_timer ++;
	if (jump_timer > jump_duration){
		jumping = false
		jump_timer = 0
		//How long it will jump
	}
}




//Camera
var xCam = clamp(obj_ava.x - wCam / 2, 0, room_width - wCam);
var yCam = clamp(obj_ava.y - hCam / 2, 0, room_height - hCam);

var curX = camera_get_view_x(view_camera[0]);
var curY = camera_get_view_y(view_camera[0]);

var newX = lerp(curX, xCam, 0.1);
var newY = lerp(curY, yCam, 0.1);

camera_set_view_pos(view_camera[0], newX, newY);


if (place_meeting(x,y,obj_enemey)&& !invincible){
	current_health -= 25
	global.player_hp = current_health
	invincible = true
}

if global.player_hp = 0{
	room_restart()
	global.player_hp = 100
}
	
if (invincible){
	invincible_timer ++;
	if (invincible_timer > invincible_duration)
	{
		invincible = false
		invincible_timer = 0
	}
}

cd--

if(cd<= 0 && mouse_check_button(mb_right)){
	cd = cdValue
	with (instance_create_layer(x,y,"Instances",obj_range)){
		direction = obj_weapon.image_angle;
		speed = 8
	}
}

if(mouse_check_button_pressed(mb_left)){
	
	obj_weapon.image_xscale = 2
}
if mouse_check_button_released(mb_left){
	obj_weapon.image_xscale = 1
}