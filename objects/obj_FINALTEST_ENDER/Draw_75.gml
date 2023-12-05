if self.step == 0 {
	if place_meeting(x,y,obj_player){
		global.paused = true
		audio_sound_gain(global.music,0,3500)
		self.step = 1
	}
	alarm[0] = 300
}

if self.step == 1 {
	self.overalpha = 1 - audio_sound_get_gain(global.music)
	
}

draw_set_alpha(self.overalpha)
draw_set_colour(c_black)
draw_rectangle(0,0,800,480,false)
draw_set_alpha(1)