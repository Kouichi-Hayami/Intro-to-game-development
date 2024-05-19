if(main){
	
	if (scrolling_index < 2 && keyboard_check_pressed(vk_down)){
		y += movespeed
		scrolling_index += 1
	} 

	if (scrolling_index > 0 && keyboard_check_pressed(vk_up)) {
		y -= movespeed
		scrolling_index -= 1
	}
}


if (y <= 420) y = 420

if (y >= 600 ) y =600

if (keyboard_check_pressed(vk_space)&&global.player_turn = true){
	switch (scrolling_index)
	{
		case 0:
		instance_create_layer(60,100,"Instances",obj_new)
	
		break;
		
		case 1:
		obj_enemy.hp -= choose(obj_ava.Player1_damage, obj_ava2.Player2_damage);
		
		global.player_turn = false;
		
		break;
		
		case 2:
		Attack.visible = false
		Magic.visible = false
		Item.visible = false
		obj_pointer.visible = false
		instance_create_layer(600,500,"Instances", obj_item)
		break;
	
	}
	main = true
}
	
