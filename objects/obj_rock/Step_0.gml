var inst = instance_place(x,y,obj_hurtbox)

if inst != noone {
	if inst.mode == "pickaxe" {
		instance_destroy(self)
		scr_screenshake(4,4,3)
		audio_sound_pitch(sfx_rockmine,random_range(1,1.5))
		audio_play_sound(sfx_rockmine,100,0)
		global.player_hp += 2
		if global.player_hp > global.player_maxhp {
			global.player_hp = global.player_maxhp	
		}
	}
}