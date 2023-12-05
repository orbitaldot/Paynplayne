self.moving = false

if self.invincible_timer > 0 {
	self.invincible_timer--
	image_alpha = round((self.invincible_timer mod 4)/4)
}else{
	self.invincible_timer = 0
	image_alpha = 1
}

if self.movefreeze_timer > 0 {
	self.movefreeze_timer--
}else{
	self.movefreeze_timer = 0
}

if self.state == "walk" 
&& self.canmove 
&& !instance_exists(obj_dialogue) 
&& !instance_exists(obj_roomtransition)
&& !global.paused 
&& self.movefreeze_timer == 0 {
	if keyboard_check(vk_left) {
		self.facing = "left"
		if scr_coll(self.facing) {
			self.moving = true
			x -= self.movespeed
		}
	}else if keyboard_check(vk_right) {
		self.facing = "right"
		if scr_coll(self.facing) {
			self.moving = true
			x += self.movespeed
		}
	}

	if keyboard_check(vk_up) {
		self.facing = "up"
		if scr_coll(self.facing) {
			self.moving = true
			y -= self.movespeed
		}
	}else if keyboard_check(vk_down) {
		self.facing = "down"
		if scr_coll(self.facing) {
			self.moving = true
			y += self.movespeed	
		}
	}
	
	if keyboard_check_pressed(ord("A")) {
		scr_interact(self.facing,1)	
	}else if keyboard_check_pressed(ord("S")){
		if global.inventory[global.inv_selected] != 0 {
			scr_item_use(global.inventory[global.inv_selected])	
		}
	}
}

if self.movefreeze_timer == 0 {
	switch(facing){
		case "up":
			sprite_index = spr_player_u
			break;
		case "down":
			sprite_index = spr_player_d
			break;
		case "left":
			sprite_index = spr_player_l
			break;
		case "right":
			sprite_index = spr_player_r
			break;
	}
}else{
	sprite_index = spr_player_s	
}

if self.moving {
	image_speed = 1
	if keyboard_check(vk_lshift){
		self.movespeed = ceil(lerp(self.movespeed,2.5,.2))
	}else{
		self.movespeed = ceil(lerp(self.movespeed,1.5,.2))	
	}
}else{
	image_speed = 0
	image_index = 0
	self.movespeed = lerp(self.movespeed,0,.2)	
}

scr_depth(y)