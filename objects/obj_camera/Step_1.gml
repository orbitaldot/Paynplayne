if self.screenshake_time > 0 {
	self.screenshake_time--
	
	if (self.screenshake_time mod 3) == 0 {
		self.screenshake_x *= choose(1,-1,0)
		self.screenshake_y *= choose(1,-1,0)
	}
}else{
	self.screenshake_x = 0
	self.screenshake_y = 0
}

if self.target != ""{
	if instance_exists(self.target) {
		self.cx = ceil(lerp(self.cx,self.target.x,self.cspeed))
		self.cy = ceil(lerp(self.cy,self.target.y,self.cspeed))
	
		camera_set_view_pos(view_camera[0],clamp(self.cx-global.window_size[0]/2+self.screenshake_x,0-self.screenshake_x,room_width-global.window_size[0]+self.screenshake_x),clamp(self.cy-global.window_size[1]/2+self.screenshake_y,0-screenshake_y,room_height-global.window_size[1]+self.screenshake_y))
	}
}