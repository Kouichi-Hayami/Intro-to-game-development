if (selected == true)
	{
		if (place_free(mouse_x, mouse_y))
		{
			_xx = mouse_x;
			_yy = mouse_y;
		
			moving = true;
		
			instance_create_layer(mouse_x, mouse_y, "Instances", obj_goto)
		}
	}