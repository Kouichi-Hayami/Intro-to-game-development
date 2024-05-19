if (global.can_select == true)
{
	if (flipped == false)
	{
		flipped = true;
		global.flipAttempts ++; 
		global.selectionNumber ++;
		
		global.match[global.selectionNumber - 1, 0] = type;
		global.match[global.selectionNumber - 1, 1] = id;
		
		if (global.selectionNumber == 2)
		{
			global.can_select = false;
			if (global.match[0,0] == global.match[1,0])
			{
				with (global.match[0,1])
				{
					flipped = true;
					global.flipCount += 1;
					instance_create_layer(mouse_x, mouse_y, "Effects",obj_effect);
					
				}
				
				with (global.match[1,1])
				{
					flipped = true;
					global.flipCount += 1;
					instance_create_layer(mouse_x, mouse_y, "Effects",obj_effect);

				}
				global.selectionNumber = 0; 

				global.match[0, 0] = "null";
				global.match[0, 1] = "999";
				global.match[1,  0] = "null";
				global.match[1, 1] = "999";
				
				global.can_select = true;	
			}
			else
			{
				alarm[0] = room_speed * 0.5;
			}
			
		} 
	}
	
}


if (global.flipCount >= 24)
{
	room_goto_next();
}





