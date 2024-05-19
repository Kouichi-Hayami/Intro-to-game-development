//x += 1;

if(keyboard_check(ord("D"))&& x + sprite_width < room_width)
{
		x += move_speed;
}

if(keyboard_check(ord("W"))&& y > 0 )
{
		y -= move_speed;
}

if(keyboard_check(ord("A"))&& x > 0)
{
		x -= move_speed;
}

if(keyboard_check(ord("S"))&& y + sprite_height < room_height)
{
		y += move_speed;
}

if(keyboard_check(vk_space) && shoot = true)
{
	instance_create_layer(x,y,"Bullet",obj_b);
	shoot = false; 
	alarm[0] = 10;
}

