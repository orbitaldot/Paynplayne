if self.step == 0 {
	if !instance_exists(obj_roomtransition){
		global.msg[0] = "You enter the tent.//"
		global.msg[1] = "A woman is sitting in an armchair, %+5reading %.a book. %+5You assume this is M's sister.//"
		global.msg[2] = "She puts it down and looks at you.//"
		global.msg[3] = "...//"
		scr_dialogue(global.msg)
		self.step = 1	
	}
}

if self.step == 1 {
	if !instance_exists(obj_dialogue){
		var foundone = false
		for(var i = 0; i < array_length_1d(global.inventory); i++){
			if global.inventory[i] == 7 {
				foundone = true
				break;
			}
		}
		
		if foundone {
			self.step = 2	
		}else{
			self.step = 1000
		}
	}
}

if self.step == 2 {
	global.msg[0] = "You grab the letter and hand it to her.//"
	global.msg[1] = "She recognizes the handwriting on %.the envelopes.//"
	global.msg[2] = "She smiles.//"
	global.msg[3] = "                     End.//"
	scr_dialogue(global.msg)
	self.step = 3	
}

if self.step == 1000 {
	global.msg[0] = "She lunges at you and casts a spell.//"
	global.msg[1] = "The world around you goes dark.//"
	global.msg[2] = "But once you awaken, %+5cage bars %.block your view.//"
	global.msg[3] = "You feel excruciating pain.//"
	global.msg[4] = "                     End.//"
	scr_dialogue(global.msg)
	self.step = 3
}

if self.step == 3 {
	if !instance_exists(obj_dialogue){
		game_restart()
	}
}