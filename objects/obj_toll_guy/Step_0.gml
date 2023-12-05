if room == room_a8 {
	if myinteract == 1 {
		self.msg[0] = "Heeeeyyyyyyyy!!!!! %+5I'm the toll guy!//"
		self.msg[1] = "If you want to pass, %+5you'll have to %.pay a little fee...//"
		if global.player_money <= 0 {
			self.msg[2] = "Ah!!!!! %+5The gate is already open!!!!//"
			self.msg[3] = "Have a greaaaaat day!!!!//"
			self.talked = 2
		}else{
			self.msg[2] = "%Ch... of exactly $" + string(global.player_money) + "!!!//"
			global.choices = ["Pay","Don't pay"]
			self.talked = 1
		}
		sprite_index = spr_stonehead_npc_d
		global.msg = self.msg
		scr_dialogue(global.msg)
		myinteract = 0
	}

	if self.talked == 1 && !instance_exists(obj_dialogue){
		if global.choice == 0 {
			global.player_money = 0
			audio_sound_pitch(sfx_cashhurt,1)
			audio_play_sound(sfx_cashhurt,0,false)
			global.msg[0] = "Eeeeexcellent!!!!!!//"
			global.msg[1] = "You may pass right on through!!!!!//"
			global.msg[2] = "Have a greeeeat day on the other side, %+5 %.you absolute cutie!!!!//"
			scr_dialogue(global.msg)
		}else{
			global.msg[0] = "Why come here then, %+5princess????//"
			scr_dialogue(global.msg)	
		}
		self.talked = 2
	}

	if self.talked == 2 && !instance_exists(obj_dialogue){
		sprite_index = spr_stonehead_npc
		self.talked = 0
	}

	if global.player_money > 0 && obj_player.y > 365 {
		if !position_meeting(182,322,obj_coll){
			with(instance_create(180,320,obj_coll)){
				image_xscale = 2
				image_yscale = 2
				image_alpha = 1
				sprite_index = spr_tollgate
				scr_depth(y)
			}
		}
	}else{
		if position_meeting(182,322,obj_coll){
			with(instance_place(182,322,obj_coll)){
				instance_destroy(self)
			}
		}
	}
}else if room == room_a9 {
	if myinteract == 1 {
		if global.flags[3] == 0 {
			self.msg[0] = "Heeeeyyyyyyyy!!!!! %+5I'm the SECOND toll guy!//"
			self.msg[1] = "If you want to pass, %+5you'll have to %.pay ANOTHER little fee!!!!!//"
			self.msg[2] = "%Ch... of EXAAAACTLY!! $30!!!//"
			global.choices = ["Pay","Don't pay"]
			self.talked = 1
		}else{
			self.msg[0] = "Make sure to greet M. for me!!!!//"
			self.talked = 2
		}

		sprite_index = spr_stonehead_npc_d
		global.msg = self.msg
		scr_dialogue(global.msg)
		myinteract = 0
	}

	if self.talked == 1 && !instance_exists(obj_dialogue){
		if global.choice == 0 && global.player_money >= 30 {
			global.player_money -= 30
			audio_sound_pitch(sfx_cashhurt,1)
			audio_play_sound(sfx_cashhurt,0,false)
			global.msg[0] = "Quuuuuuick and easy!!!!!//"
			global.msg[1] = "Have a good time, %+5darling!!!!//"
			global.flags[3] = 1
			scr_dialogue(global.msg)
		}else{
			global.msg[0] = "Aw don't worry gorgeous!!!!//"
			global.msg[1] = "Just make sure to have the money before you %.come back.//"
			scr_dialogue(global.msg)	
		}
		self.talked = 2
	}

	if self.talked == 2 && !instance_exists(obj_dialogue){
		sprite_index = spr_stonehead_npc
		self.talked = 0
	}

	if global.flags[3] == 0 {
		if !position_meeting(182,62,obj_coll){
			with(instance_create(180,60,obj_coll)){
				image_xscale = 2
				image_yscale = 2
				image_alpha = 1
				sprite_index = spr_tollgate
				scr_depth(y)
			}
		}
	}else{
		if position_meeting(182,62,obj_coll){
			with(instance_place(182,62,obj_coll)){
				instance_destroy(self)
			}
		}
	}
}
