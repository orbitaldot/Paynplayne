if self.myinteract == 1 {
	global.msg = self.mymsg
	scr_dialogue(global.msg)
	self.myinteract = 0
}