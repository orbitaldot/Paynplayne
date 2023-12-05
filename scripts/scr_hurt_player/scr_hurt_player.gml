with(obj_player){
	if self.invincible_timer == 0 {
		global.player_hp -= argument0
		global.player_money += argument0
		scr_screenshake(4,4,3)
		self.invincible_timer = argument1
		
		audio_sound_gain(sfx_hurt,.8,0)
		audio_sound_pitch(sfx_hurt,random_range(.9,1.1))
		audio_play_sound(sfx_hurt,2,false)
		audio_sound_pitch(sfx_cashhurt,1.5)
		audio_play_sound(sfx_cashhurt,2,false)
		
		return true
	}	
}

return false