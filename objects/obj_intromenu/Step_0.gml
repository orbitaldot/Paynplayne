if global.input_pressed[? "action0"] {
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
