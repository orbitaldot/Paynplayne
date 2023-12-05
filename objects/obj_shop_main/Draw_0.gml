draw_set_alpha(1)
draw_sprite(spr_shopkeep,image_index,0,0)
draw_set_alpha(image_alpha)
draw_set_colour(c_black)
draw_rectangle(0,0,400,240,false)
draw_set_alpha(1)
draw_set_colour(c_white)

switch(self.state)  {
	case "greetingsss":
		if !instance_exists(obj_dialogue){
			self.state = "greetings"	
			if global.flags[4] == 0 {
				self.choices[1] = "Talk"	
			}else{
				self.choices[1] = "Talk"
			}
		}
		break;
	case "greetings":
		if !instance_exists(obj_dialogue){
			global.msg[0] = "%NDHow may I help?//"
			scr_dialogue(global.msg)	
		}
		show_choices = true
		break;
	case "talk":
		if !instance_exists(obj_dialogue){
				global.msg[0] = "%NDWhat do you want to talk about?//"
				scr_dialogue(global.msg)	
			}
		
		break;
	case "talking":
		if !instance_exists(obj_dialogue){
			self.show_choices = false
			self.state = "talk"
			self.released = false
		}
		break;
	
}

if self.show_choices {
	for(var i = 0; i < array_length_1d(self.choices); i++){
		if i == self.selected {
			draw_set_colour(c_white)
			draw_rectangle(135+i*60,206,135+i*60+string_width(self.choices[i])+8,226,true)
		}
		draw_text(140+i*60,210,self.choices[i])
	}
	
	if keyboard_check_pressed(vk_right){
		if self.selected < array_length_1d(self.choices)-1 {
			self.selected++	
		}
	}else if keyboard_check_pressed(vk_left){
		if self.selected > 0 {
			self.selected--
		}
	}
	
	if self.state == "greetings" {
		if keyboard_check_pressed(ord("A")){
			if self.selected == 2 {
				instance_destroy(obj_dialogue)
				self.show_choices = false
				self.state = "leave"
				global.msg[0] = "Toodles! %+5 And remember: %.Pain equals Gold. %+5Not that I wish you %.to come to harm, %+5of course.//"
				if global.flags[1] >= 3 && global.flags[1] != 9999 {
					global.msg[0] = "Be careful out there... %+5 %.Or not if you want the cash!//"
					global.msg[1] = "Oh, and don't think about %.farming money by running into cactuses %.anymore.//"
					global.msg[2] = "There! %+5 %.You might appreciate this protective %.spell against them!//"
					global.msg[3] = "Toodles!//"
					global.flags[1] = 9999
				}
				scr_dialogue(global.msg)
				
			}else if self.selected == 0 {
				instance_destroy(obj_dialogue)
				self.show_choices = false
				self.state = "buy"
				self.selected = 0
				self.released = false
				
				global.msg[0] = "%NDWell, %+5what may it be?//"
				scr_dialogue(global.msg)
				
			}else if self.selected == 1 {
				instance_destroy(obj_dialogue)
				self.show_choices = false
				self.state = "talk"
				self.selected = 0
				self.released = false

			}
		}
	}
}

if self.state == "leave" {
	if !instance_exists(obj_dialogue){
		room_goto(room_shop_outside)	
	}
}else if self.state == "buy" {
	image_alpha = lerp(image_alpha,.4,.1)
	draw_text(36,18,"$" + string(global.player_money))
	
	for(var i = 0; i < array_length_1d(self.inventory); i++){
		draw_set_colour(c_yellow)
		draw_text(40,40+i*22,scr_item_info(self.inventory[i],"name"))
		draw_set_halign(fa_right)
		draw_text(220,40+i*22,"$" + string(scr_item_info(self.inventory[i],"cost")))
		draw_set_halign(fa_left)
		draw_set_colour(c_white)
		if self.selected == i {
			draw_rectangle(36,36+i*22,222,56+i*22,true)	
		}
	}
	
	draw_set_colour(c_gray)
	if self.selected == 99999 {
		draw_set_colour(c_white)
		draw_rectangle(186,206,224,226,true)	
	}
	draw_text(190,210,"BACK")
	
	if keyboard_check_pressed(ord("A")){
		if self.released {
			if self.selected == 99999 {
				instance_destroy(obj_dialogue)
				self.state = "greetings"	
				self.show_choices = true
				self.selected = 0
				global.msg[0] = "%NDWhat's up?//"
				scr_dialogue(global.msg)
			}else{
				var aaa = "%NDNot enough money? %+5 %.Please go die some more, %+5haha.//"
				if scr_item_info(self.inventory[self.selected],"cost") <= global.player_money {
					if self.inventory[self.selected] == 3{
						aaa = "%NDYour total health has been doubled. %+5 %.Replenished too, %+5free of charge.//"
						global.player_maxhp = 40
						global.player_hp = 40
						global.player_money -= scr_item_info(self.inventory[self.selected],"cost")
						audio_play_sound(sfx_cashhurt,0,false)
					}else {
						var foundone = false
						for(var i = 0; i < array_length_1d(global.inventory); i++){
							if global.inventory[i] == 0 {
								global.inventory[i] = self.inventory[self.selected]	
								foundone = true
								break;
							}
						}
						if !foundone {
							aaa = "%NDYou're carrying too much.//"	
						}else{
							audio_play_sound(sfx_cashhurt,0,false)
							aaa = "%NDKaching-a-ling.//"
							global.player_money -= scr_item_info(self.inventory[self.selected],"cost")
						}
					}
				}
				self.released = false
				instance_destroy(obj_dialogue)	
				global.msg[0] = aaa
				scr_dialogue(global.msg)
				event_user(0)
			}
		}
	}else if keyboard_check_pressed(vk_down){
		if self.selected < array_length_1d(self.inventory)-1 {
			self.selected++	
		}else{
			self.selected = 99999
		}
	}else if keyboard_check_pressed(vk_up){
		if self.selected = 99999 {
			self.selected = array_length_1d(self.inventory)		
		}
		if self.selected > 0 {
			self.selected--	
		}
	}
	
	
	
	
}else if self.state == "talk" {
	image_alpha = lerp(image_alpha,.4,.1)
	for(var i = 0; i < array_length_1d(self.topics); i++){
		draw_set_colour(c_yellow)
		draw_text(40,40+i*22,self.topics[i])
		draw_set_colour(c_white)
		if self.selected == i {
			draw_rectangle(36,36+i*22,222,56+i*22,true)	
		}
	}
	
	draw_set_colour(c_gray)
	if self.selected == 99999 {
		draw_set_colour(c_white)
		draw_rectangle(186,206,224,226,true)	
	}
	draw_text(190,210,"BACK")
	
	if keyboard_check_pressed(ord("A")){
		if self.released {
			if self.selected == 99999 {
				instance_destroy(obj_dialogue)
				self.state = "greetings"	
				self.show_choices = true
				self.selected = 0
				global.msg[0] = "%NDHow may I help you?//"
				scr_dialogue(global.msg)
			}else{
				if self.topics[self.selected] == "Who are you" {
					instance_destroy(obj_dialogue)
					self.state = "talking"
					global.msg[0] = "Well, %+5my friends call me M. %+5 %.Aaaaaaand, %+5I'm a witch. %+5 %.I just said that, %+5didn't I?//"
					scr_dialogue(global.msg)
				}else if self.topics[self.selected] == "Who am I" {
					global.flags[4] = 1
					instance_destroy(obj_dialogue)
					self.state = "talking"
					global.msg[0] = "Well, %+5you are you!//"
					global.msg[1] = "But I know that's not an answer you're %.satisfied with.//"
					global.msg[2] = "To get straight to the point: %+5 %.You are a magical creature that I %.grew in my yard.//"
					global.msg[3] = "Your body turns %c2pain %c0into %c1gold %c0. %+5 %.When you take a hit, %+5you gain money.//"
					global.msg[4] = "Most witches would lock you in a cage and %.extort said gold out of you. %+5 %.But I'm not most witches.//"
					global.msg[5] = "In fact, %+5there's... %+5a little something %.I need you to do for me.//"
					global.msg[6] = "My sister- %+5another witch-//"
					global.msg[7] = "I want you to bring a %c1letter %c0to her.//"
					global.msg[8] = "She doesn't live terribly far from here - %+5 %.but y'know, %+5the way there is pretty dangerous.//"
					global.msg[9] = "An old lady like myself shouldn't %.put herself through such struggles.//"
					scr_dialogue(global.msg)
					for(var i = 0; i < array_length_1d(global.inventory); i++){
						if global.inventory[i] == 0 {
							global.inventory[i] = 7
							foundone = true
							break;
						}
					}
				}else if self.topics[self.selected] == "Wait how old are you" {
					instance_destroy(obj_dialogue)
					global.flags[4] = 2
					self.state = "talking"
					global.msg[0] = "What a rude question.//"
					global.msg[1] = "I don't look a single day over 1002, %+5 %.don't you think?//"
					scr_dialogue(global.msg)
				}else if self.topics[self.selected] == "Why sell to me" {
					instance_destroy(obj_dialogue)
					global.flags[4] = 2
					self.state = "talking"
					global.msg[0] = "I may have created you, %+5but I still think %.you should fight for what I can %.give you.//"
					global.msg[1] = "You have the priviledge of not being %.extorted for gold in a cage by me %+5- %.consider yourself lucky for having %.a chance like that.//"
					scr_dialogue(global.msg)
				}else if self.topics[self.selected] == "Stone Head People" {
					instance_destroy(obj_dialogue)
					self.state = "talking"
					global.msg[0] = "Eh, %+5I keep forgetting what they're called.//"
					global.msg[1] = "Just leave them alone. %+5 %.They're pretty nice anyway.//"
					global.msg[2] = "Eurgh... %+5that accent though...//"
					scr_dialogue(global.msg)
				}else if self.topics[self.selected] == "You're pretty" {
					instance_destroy(obj_dialogue)
					self.state = "talking"
					global.msg[0] = "... I didn't really make you to flirt %.with me, %+5but... thank you nonetheless.//"
					scr_dialogue(global.msg)
				}
			}
			event_user(1)
		}
	}else if keyboard_check_pressed(vk_down){
		if self.selected < array_length_1d(self.topics)-1 {
			self.selected++	
		}else{
			self.selected = 99999
		}
	}else if keyboard_check_pressed(vk_up){
		if self.selected = 99999 {
			self.selected = array_length_1d(self.topics)		
		}
		if self.selected > 0 {
			self.selected--	
		}
	}
}

if keyboard_check_released(ord("A")){
	self.released = true	
}

if self.state != "buy" && self.state != "talk" && !instance_exists(obj_roomtransition){
	image_alpha = lerp(image_alpha,0,.1)
}
