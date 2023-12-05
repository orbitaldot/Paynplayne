if self.dying_timer > 0 {
	self.dying_timer--
	image_alpha = round((self.dying_timer mod 4)/4)
	if self.dying_timer == 1 {
		instance_destroy(self)
		audio_play_sound(sfx_poof,20,false)
	}
}

if global.paused || instance_exists(obj_dialogue) || self.dying_timer != 0{
	exit;
}

if obj_player.x < self.x  + random_range(-.5,.5){
	if self.vel_x > -1 {
		self.vel_x -= .02	
	}else{
		self.vel_x = -1
	}
}else if obj_player.x > self.x {
	if self.vel_x < 1  + random_range(-.5,.5){
		self.vel_x += .02	
	}else{
		self.vel_x = 1
	}
}
if obj_player.y < self.y {
	if self.vel_y > -1  + random_range(-.5,.5){
		self.vel_y -= .02	
	}else{
		self.vel_y = -1
	}
}else if obj_player.y > self.y {
	if self.vel_y < 1 + random_range(-.5,.5){
		self.vel_y += .02	
	}else{
		self.vel_y = 1
	}
}

self.x += self.vel_x * 2
self.y += self.vel_y * 2

scr_depth(9000)

if place_meeting(x,y,obj_player){
	scr_hurt_player(2,120)
}

var inst = instance_place(x,y,obj_hurtbox)

if inst != noone {
	if inst.mode == "sword" {
		audio_sound_pitch(sfx_enemyhurt,1.2)
		audio_play_sound(sfx_enemyhurt,20,false)
		scr_screenshake(3,3,2)
		global.player_hp += 5
		if global.player_hp > global.player_maxhp {
			global.player_hp = global.player_maxhp	
		}
		self.dying_timer = 40
	}
}