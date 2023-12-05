x = camera_get_view_x(view_camera[0])
y = camera_get_view_y(view_camera[0])

draw_set_alpha(1)
draw_set_colour(c_black)
draw_rectangle(x,y+200,x+400,y+420,false)

self.mytick++

draw_set_font(font_msgothic)

draw_set_colour(c_white)
var hx = 0
var hy = 0
if global.player_hp < global.player_maxhp / 4 {
	hx = random_range(-1,1)
	hy = random_range(-1,1)
	draw_set_colour(c_yellow)
}
draw_sprite_ext(spr_heart,0,x+12+hx,y+214+hy,2,2,0,c_white,1)
draw_set_halign(fa_right)
draw_text(x+50,y+205,clamp(global.player_hp,0,999999))

draw_set_colour(c_white)
draw_text(x+60,y+215,"/")
draw_set_halign(fa_left)
draw_text(x+64,y+222,global.player_maxhp)


draw_set_halign(fa_right)
draw_set_valign(fa_bottom)
var a = 1
if instance_exists(obj_player){
	if obj_player.invincible_timer != 0 {
		a = 1 +	clamp((obj_player.invincible_timer-110)/120,0,1)
	}
}
draw_text_transformed(x+390,y+230,string(global.player_money) + " $",a,a*a,0)

var bb = 40
for(var i = 0; i < array_length_1d(global.inventory); i++){
	draw_set_colour(c_gray)
	draw_set_alpha(.6)
	if i == global.inv_selected {
		draw_set_colour(c_white)	
		draw_set_alpha(1)
	}
	draw_roundrect(x+96+i*30+bb,y+206,x+122+i*30+bb,y+232,true)	
	if global.inventory[i] != 0 {
		draw_sprite(scr_item_info(global.inventory[i],"sprite"),0,x+140+i*30,y+210)	
	}
}

if keyboard_check_pressed(vk_lcontrol){
	global.inv_selected++
	if global.inv_selected > 4{
		global.inv_selected = 0
	}
}

draw_set_valign(fa_top)
draw_set_halign(fa_left)
draw_set_alpha(1)

if keyboard_check_pressed(ord(1)){
	/*if global.inv_selected != 1 {
		audio_play_sound(sfx_menudown,0,false)	
	}*/
	global.inv_selected = 0	
}else if keyboard_check_pressed(ord(2)){
	/*if global.inv_selected != 1 {
		audio_play_sound(sfx_menudown,0,false)	
	}*/
	global.inv_selected = 1
}else if keyboard_check_pressed(ord(3)){
	/*if global.inv_selected != 1 {
		audio_play_sound(sfx_menudown,0,false)	
	}*/
	global.inv_selected = 2	
}else if keyboard_check_pressed(ord(4)){
	/*if global.inv_selected != 1 {
		audio_play_sound(sfx_menudown,0,false)	
	}*/
	global.inv_selected = 3	
}else if keyboard_check_pressed(ord(5)){
	/*if global.inv_selected != 1 {
		audio_play_sound(sfx_menudown,0,false)	
	}*/
	global.inv_selected = 4
}

if global.debug == 1 {
	if keyboard_check_pressed(vk_enter){
		global.player_money += 10
		audio_play_sound(sfx_cashhurt,0,false)
	}
}