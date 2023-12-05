switch(argument0){
	case 1: // HEALING POTION
		if global.player_hp != global.player_maxhp {
			global.player_hp += ceil(.5*global.player_maxhp)
		
			global.inventory[global.inv_selected] = 0
			scr_reshuffleinv()
			if global.player_hp > global.player_maxhp {
				global.player_hp = global.player_maxhp	
			}
			var a = irandom_range(8,12)
			for(var i = 0; i < a; i++){
				with(instance_create(obj_gui.x+5+irandom_range(0,60),obj_gui.y+240-irandom_range(0,30),obj_floatnum)){
						
				}
			}
		}
		break;
	case 2: // SWORD
		switch(self.facing){
			case "up":
				with(instance_create(x,y-13,obj_hurtbox)){
					image_xscale = 2
					image_yscale = 2
					mode = "sword"
					sprite_index = spr_hurtbox_anim_u
				}
				break;
			case "down":
				with(instance_create(x,y+23,obj_hurtbox)){
					image_xscale = 2
					image_yscale = 2
					mode = "sword"
					sprite_index = spr_hurtbox_anim_d
				}
				break;
			case "left":
				with(instance_create(x-23,y+10,obj_hurtbox)){
					image_xscale = 2
					image_yscale = 2
					mode = "sword"
					sprite_index = spr_hurtbox_anim_l
				}
				break;
			case "right":
				with(instance_create(x+23,y+10,obj_hurtbox)){
					image_yscale = 2
					image_xscale = 2
					mode = "sword"
					sprite_index = spr_hurtbox_anim_r
				}
				break;
		}
		audio_sound_pitch(sfx_swing,random_range(1.2,1.4))
		audio_play_sound(sfx_swing,0,0)
		self.movefreeze_timer = 4
		break;
	case 5: // PICKAXE
			switch(self.facing){
				case "up":
					with(instance_create(x,y-13,obj_hurtbox)){
						image_xscale = 1.5
						image_yscale = 2
						mode = "pickaxe"
						sprite_index = spr_hurtbox_anim_u
					}
					break;
				case "down":
					with(instance_create(x,y+23,obj_hurtbox)){
						image_xscale = 1.5
						image_yscale = 2
						mode = "pickaxe"
						sprite_index = spr_hurtbox_anim_d
					}
					break;
				case "left":
					with(instance_create(x-23,y+10,obj_hurtbox)){
						image_xscale = 1.5
						image_yscale = 2
						mode = "pickaxe"
						sprite_index = spr_hurtbox_anim_l
					}
					break;
				case "right":
					with(instance_create(x+23,y+10,obj_hurtbox)){
						image_yscale = 2
						image_xscale = 1.5
						mode = "pickaxe"
						sprite_index = spr_hurtbox_anim_r
					}
					break;
			}
			audio_sound_pitch(sfx_swing,random_range(1.2,1.4))
			audio_play_sound(sfx_swing,0,0)
			self.movefreeze_timer = 4
		break;
}
