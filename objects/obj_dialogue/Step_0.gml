if self.did == false {
	var line = self.lines[self.msg_step]
	
	var a = 0
	if room == room_shop {
		a = 40	
	}
	
	self.mywriter = instance_create(camera_get_view_x(view_camera[0])+30,camera_get_view_y(view_camera[0])+205-a,obj_textwriter)
	

	self.destroy_on_a = true
	if string_pos("%ND",line) == 1 {
		self.destroy_on_a = false	
		line = string_replace(line,"%ND","")
	}
	if string_pos("%Ch",line) == 1 {
		global.choice = -1
		global.show_choices = true
		with(self.mywriter){
			self.printreveal = string_length(self.printstring)-1
			self.complete = true
		}
		line = string_replace(line,"%Ch","")
	}
	
	with(self.mywriter){
		self.printstring = line
	}
	
	++self.msg_step
	self.did = true
}

if instance_exists(self.mywriter){
	if keyboard_check_pressed(ord("D")) {
		if global.show_choices == false {
			self.mywriter.printreveal = string_length(self.mywriter.printstring)-1
			self.mywriter.complete = true
		}
	}
	
	if global.show_choices {
		if !self.mywriter.complete {
			self.mywriter.printreveal = string_length(self.mywriter.printstring)-1
			self.mywriter.complete = true
		}	
	}

	
	if keyboard_check_pressed(ord("A")) {
		if global.show_choices == false {
			if self.mywriter.complete && self.destroy_on_a {
				instance_destroy(self.mywriter)
				self.did = false
				if self.msg_step >= array_length_1d(self.lines){
					alarm[0] = 1 
				}
			}	
		}else{
			if global.choice != -1 {
				instance_destroy(self.mywriter)
				self.did = false
				if self.msg_step >= array_length_1d(self.lines){
					alarm[0] = 1 
				}
			}
		}
	}
}

