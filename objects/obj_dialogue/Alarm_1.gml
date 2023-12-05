self.dbox_height = string_count("%.",self.lines[self.msg_step-1])

self.old_dbox_height = self.dbox_height

if instance_exists(self.mywriter){
	self.mywriter.y = camera_get_view_y(view_camera[0])+170+20*(2-self.dbox_height)	
}