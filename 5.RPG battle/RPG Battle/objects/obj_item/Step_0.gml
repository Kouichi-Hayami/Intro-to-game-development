if instance_exists(obj_item)
{
	if keyboard_check_pressed(vk_space){
	Attack.visible = true
		Magic.visible = true
		Item.visible = true
		obj_pointer.visible = true
		
		obj_ava.hp +=5
		obj_ava2.hp +=5
		instance_destroy(obj_item)
		global.player_turn =true
	}
}
obj_pointer.main = true



