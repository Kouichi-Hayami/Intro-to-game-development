draw_sprite(spr_textbox,0,x,y)
draw_set_color(c_black)
if(global.player_point = 0){
	draw_text_ext(x,y,text,string_height(text),sprite_width)
}
else draw_text_ext(x,y,Anothertext,string_height(Anothertext),sprite_width)


