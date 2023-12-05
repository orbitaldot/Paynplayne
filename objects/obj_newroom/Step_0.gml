if place_meeting(x,y,obj_player) && !self.doing {
	global.from_id = self.from_id
	var t = self.to
	room_goto(t)
	self.doing = true
}
