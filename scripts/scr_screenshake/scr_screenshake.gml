function scr_screenshake(argument0, argument1, argument2) {
	with(obj_camera){
		self.screenshake_x = argument0 * choose(1,-1)
		self.screenshake_y = argument1 * choose(1,-1)
		self.screenshake_time = argument2
	}


}
