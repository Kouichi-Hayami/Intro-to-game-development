if(!instance_exists(obj_enemy)){
	respawn_status = true;
}

for (var i = 0; i < 3; i++){
	if(enemy_array[i] != 0 && enemy_array[i].hp <= 0){
		instance_destroy(enemy_array[i]);
		array_set(enemy_array, i , 0);
	}
}

//Destroey when hp = 0

if(respawn_status){
	for (var j = 0; j < 3; j++){
		var newenmey = instance_create_layer(100 + j * 150 , 100, "Instances", obj_enemy)
		array_set(enemy_array, j ,newenmey);
		obj_ava.Player1_damage ++;
		obj_ava2.Player2_damage ++;
		
	}
respawn_status = false

}





