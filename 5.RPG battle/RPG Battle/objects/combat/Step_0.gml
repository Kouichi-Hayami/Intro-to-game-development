if (!global.player_turn){
	var randomObject = choose(1, 2);

	if (randomObject == 1 ){
		obj_ava.hp -= 1;
	}
	else if (randomObject == 2){
		obj_ava2.hp -= 2;
	}
		
		
	global.player_turn = true
}





