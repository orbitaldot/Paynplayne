self.state = "closed"
self.item_id = 0

self.myinteract = 0

if room == room_a1 {
	self.item_id = 1
	if global.flags[0] == 1 {
		self.state = "open"	
		self.item_id = 0
	}
}else if room == room_a5 {
	self.item_id = 1
	if global.flags[6] == 1 {
		self.state = "open"	
		self.item_id = 4
	}
}

scr_depth(y)