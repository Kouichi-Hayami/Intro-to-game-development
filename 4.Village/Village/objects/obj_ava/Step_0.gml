	if keyboard_check(ord("D")){
	hspeed += acceleration;
	
}

if keyboard_check(ord("A")){
	hspeed -= acceleration;
	
}

if keyboard_check(ord("W")) {
	vspeed -= acceleration;
	
}

if keyboard_check(ord("S")) {
	vspeed += acceleration;
}
//movement
if !keyboard_check(ord("A")) && !keyboard_check(ord("D")) {
    if hspeed > 0 {
        hspeed -= friction;
    } else if hspeed < 0 {
        hspeed += friction;
    }
}
//acceleration and friction

hspeed = clamp(hspeed, -maxSpeed, maxSpeed);//the maximum speed

camera_set_view_pos(view_camera[0],x-camera_width/2,y-camera_height/2)
//camera movement




if place_meeting(x,y,obj_key){
	instance_destroy(obj_key)
	obj_inventory.sprite_index = spr_inventory_k
	Keypoint += 1
	global.player_point =Keypoint
}

obj_inventory.x = x+200
obj_inventory.y = y-camera_height/2
//sticking the inventory in the camera

if(place_meeting(x,y,obj_house)&& global.player_point >= 1){
	room_goto(rm_room)
	x = 100
	y = 550
	
}
//
if(place_meeting(x,y,obj_back)){
	room_goto(rm_outside)
	x = 600
	y= 500
}



