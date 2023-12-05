self.song = mus_shop

if global.music != self.song {
	show_debug_message("yahoo")
	self.song_to_mute = global.music
	audio_sound_gain(global.music,0,600)
}else{
	instance_destroy(self)	
}

self.dotick = 0