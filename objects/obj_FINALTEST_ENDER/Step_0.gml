if self.step == 0 {
	if place_meeting(x,y,obj_player){
		global.paused = true
		audio_sound_gain(global.music,0,3000)
		self.step = 1
	}
}

