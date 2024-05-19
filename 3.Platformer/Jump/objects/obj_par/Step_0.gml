if(keyboard_check(ord("D"))) {
	x += movespeed
	obj_camera.x += movespeed
}
if(keyboard_check(ord("A"))) {
	x -= movespeed
	obj_camera.x -= movespeed
}
//movement

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

camera_set_view_pos(view_camera[0],x-camera_width/2,768)
if(camera_get_view_x(view_camera[0]) < 0){
	camera_set_view_pos(view_camera[0],0,768)
}

if(camera_get_view_x(view_camera[0])+camera_width > 3000){
	camera_set_view_pos(view_camera[0],3000-camera_width,768)
}
//The camera will not go over the room

if (place_meeting(x, y, obj_ene)) {
    // Player touched the enemy from the sides, restart the level
    game_restart()
}

if keyboard_check_pressed(ord("1")){
    
	var new_object = instance_create_layer(x, y, "Instances", obj_ava); 

    instance_destroy();
}

if keyboard_check_pressed(ord("2")){
var new_object = instance_create_layer(x, y, "Instances", obj_ava2); 

    instance_destroy();
}

if keyboard_check_pressed(ord("3")){
var new_object = instance_create_layer(x, y, "Instances", obj_ava3); 

    instance_destroy();
}
//According to the key 123 player pressed, destroy the original object and spawn a new one