if myinteract == 1 {
	global.flags[5] = 1
	if room == room_a1 {
		if global.flags[0] == 1 {
			self.msg[0] = "Oh, %+5suuuuuure you can take from my chest!!!!//"
			self.msg[1] = "You didn't even have to ask! %+5 %.Not like you did anyway, %+5you cuuuuutie!!!//"
		}else{
			self.msg[0] = "Hiiiiiii!!!! %+5I'm M's neighbor!!!!//"
			self.msg[1] = "Oh my goooooosh, %+5aren't you the cutest little %.thing I've ever seen!!!!//"
			self.msg[2] = "If I had arms I'd just hold you and squeeze %.you painfully tight!!!!!!!!!//"
			self.msg[3] = "It's a two way win: %+5You get the cuddles, %+5 %.and I get the gold!!!!!//"
		}
	}else if room == room_a4 {
		self.msg[0] = "Hiiiiiii!!!! %+5I'm M's other neighbour!!!!! %.But I'm not as clooooose, %+5obviously.....//"
		self.msg[1] = "I am sooooooo happy you came!!!!!//"
		self.msg[2] = "And now you'll go away again!!!!!!//"
		self.msg[3] = "Boy, %+5I lead suuuuuch an exciting life!//"
	}

	sprite_index = spr_stonehead_npc_d
	global.msg = self.msg
	scr_dialogue(global.msg)
	self.talked = 1
	myinteract = 0
}

if self.talked == 1 && !instance_exists(obj_dialogue){
	sprite_index = spr_stonehead_npc
	self.talked = 0
}

/*
if self.talked == 1 && !instance_exists(obj_dialogue){
	if global.choice == 0 {
		global.msg[0] = "NO LOL//"
	}else{
		global.msg[0] = "Heeeyyyyy, %+5you don't have enough %c1HP %c0!!!//"
		global.msg[1] = "Maybe you can %c1come back here %c0once you have %.enough!!!//"
		global.msg[2] = "Now scram.//"
	}
	scr_dialogue(global.msg)
	self.talked = 2
}

if self.talked == 2 && !instance_exists(obj_dialogue){
	sprite_index = spr_stonehead_npc
	self.talked = 0
}*/