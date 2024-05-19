if (enmey_index < 2 && keyboard_check_pressed(vk_right)){
		x += movespeed
		enmey_index += 1
	} 
if (enmey_index > 0 && keyboard_check_pressed(vk_left)){
		x -= movespeed
		enmey_index -= 1
	} 

if (keyboard_check_pressed(vk_space)&& global.player_turn = true && !obj_manage.enemy_array[enmey_index] ==0 ){
	
		
		obj_manage.enemy_array[enmey_index].hp -= choose(obj_ava.Player1_damage,obj_ava2.Player2_damage);
		instance_destroy(obj_new);
		
		global.player_turn = false
		obj_pointer.main = true
	}
	
	
	

	

	