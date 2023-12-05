self.mytick++

draw_set_alpha(1)
draw_set_font(font_msgothic)
draw_set_halign(fa_center)
draw_set_colour(c_gray)
draw_text(200,40,"by OrbitalBloop, for LD44:")
draw_set_colour(c_white)
draw_set_alpha(1)
draw_text_transformed(200,60,"Paynplayne",2,2,0)

draw_set_halign(fa_left)
draw_text(80,120-14,"[ARROW KEYS]")
draw_text(80,136-14,"[NUMBERS 1-5]")
draw_text(80,152-14,"[A]")
draw_text(80,168-14,"[S]")
draw_text(80,184-14,"[D]")

draw_text(216,120-14,"MOVE")
draw_text(216,136-14,"INVENTORY")
draw_text(216,152-14,"CONFIRM / INTERACT")
draw_text(216,168-14,"USE SELECTED ITEM")
draw_text(216,184-14,"SKIP TEXT")

draw_set_halign(fa_center)
draw_set_colour(c_lime)
draw_set_alpha(.3+(self.mytick mod 30)/30)
draw_text(200,200,"Press [A] to Sprout")
draw_set_halign(fa_left)

if keyboard_check_pressed(ord("A")){
	self.pressed_a++
	self.mytick = 0	
	audio_sound_gain(sfx_hurt,.5,0)
	audio_sound_pitch(sfx_hurt,random_range(1.2,1.3))
	audio_play_sound(sfx_hurt,2,false)
	
}

if self.pressed_a > 5 {
	instance_create(0,0,startshaker)
	room_goto(room_shop_outside)	
}