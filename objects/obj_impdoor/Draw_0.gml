if !instance_exists(obj_enemy_test){
	instance_destroy(self)	
}

draw_sprite_ext(sprite_index,0,x,y,2,2,0,c_white,1)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_set_colour(c_black)
draw_text_transformed(x+21,y+20,instance_number(obj_enemy_test),2,2,0)
draw_text_transformed(x+19,y+20,instance_number(obj_enemy_test),2,2,0)
draw_text_transformed(x+20,y+19,instance_number(obj_enemy_test),2,2,0)
draw_text_transformed(x+20,y+21,instance_number(obj_enemy_test),2,2,0)
draw_set_colour(c_white)
draw_text_transformed(x+20,y+20,instance_number(obj_enemy_test),2,2,0)
draw_set_halign(fa_left)
draw_set_valign(fa_top)
