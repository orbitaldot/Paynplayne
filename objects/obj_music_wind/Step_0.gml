self.dotick++

if self.dotick > 2 {
	if !instance_exists(obj_roomtransition){
		if audio_is_playing(self.song_to_mute){
			audio_stop_sound(self.song_to_mute)
			audio_sound_gain(self.song_to_mute,1,0)
		}
		global.music = self.song
		audio_play_sound(global.music,9999,true)
		instance_destroy(self)
	}
}