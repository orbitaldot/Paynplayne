if self.myinteract == 1 {
	if global.player_hp != global.player_maxhp {
		global.choices = ["Yes","No"]
		global.msg[0] = "%ChBuy your HP back? %+5 %.(" + string(global.player_hp) + " -> " + string(global.player_maxhp) + ", $" + string(global.player_money) + " -> $" + string(global.player_money-(global.player_maxhp-global.player_hp))  + ")//"
		scr_dialogue(global.msg)
		self.used = 1
	}
	self.myinteract = 0
}

if self.used == 1 && !instance_exists(obj_dialogue){
	if global.choice == 1 {
		self.used = 0	
	}else{
		var aa = global.player_hp
		global.player_hp += global.player_money
		if global.player_hp > global.player_maxhp {
			global.player_hp = global.player_maxhp	
		}
		global.player_money -= global.player_maxhp-aa
		
		self.used = 0
	}
}