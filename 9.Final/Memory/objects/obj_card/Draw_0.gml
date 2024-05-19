if (flipped == true)
{
	switch(type)
	{
		case "apple":
			sprite_index = spr_apple;
			
		break;
		
		case "cat":	
			sprite_index = spr_cat;
		break;
		
		case "cherry":
			sprite_index = spr_cherry;
		break;
		
		case "clam":
			sprite_index = spr_clam;
		break;
		
		case "eggplant":
			sprite_index = spr_eggplant;
		break;
		
		case "orange":
			sprite_index = spr_orange;
		break;
	
	
	}
}
else
{
	sprite_index = spr_cardback;
}



draw_sprite(sprite_index, 1, x, y);

