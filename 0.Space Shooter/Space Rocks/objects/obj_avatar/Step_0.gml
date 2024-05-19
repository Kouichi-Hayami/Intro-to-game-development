if (keyboard_check_pressed(vk_space))
{
	hspeed = -hspeed;
	instance_create_layer(x, y, "Instances", obj_bullet);
}


if(x < 0)
{
	x = screen_width;
}

if (x > screen_width)
{
	x = 0;
}


if (place_meeting(x,y,obj_enemy)||place_meeting(x,y,obj_enemy_bullet))
{
	instance_destroy()
}
