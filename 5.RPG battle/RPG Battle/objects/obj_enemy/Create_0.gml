Orc_status = import_json("Orc_status.txt");
Troll_status = import_json ("Troll_status.txt");

var sprite_number = choose(1,2);
if(sprite_number == 1){
	sprite_index = spr_enemey;
	hp = Orc_status.maximumhealth;
	
}
else if (sprite_number == 2){
	sprite_index = spr_whatever;
	hp = Troll_status.maximumhealth;
	
}
maxhp = 10



