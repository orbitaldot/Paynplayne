if self.myinteract == 1 {
	if self.state == "closed" {
		for(var i = 0; i < array_length_1d(global.inventory); i++){
			if global.inventory[i] == 0 {
				global.inventory[i] = self.item_id
				self.state = "open"
				if room == room_a1 {
					global.flags[0] = 1
				}else if room == room_a5 {
					global.flags[6] = 1	
				}
				break;
			}
		}
	}
	self.myinteract = 0
}

if self.state == "closed" {
	sprite_index = spr_chest_closed
}else{
	sprite_index = spr_chest_open
}