if (!keyboard_check(vk_shift) && moving == true)
{	
	move_towards_point(_xx, _yy, movespeed);
	if (distance_to_point(_xx,_yy)==0)
	{
		moving = false;
	}
	
}
else 
{
	speed = 0;
}

if (moving == true && ds_list_size(waypoints) > 0) 
{
	for ( var i = 0; i < ds_list_size(waypoints); i ++)
	{
       var targetWaypoint = waypoints[|i];
	   move_towards_point(targetWaypoint.x, targetWaypoint.y, movespeed);
	}
	
	if (point_distance(x, y, targetWaypoint.x, targetWaypoint.y) < 5) {
            
			ds_list_clear(waypoints);
	}
           

   
}
