view_enabled = true
view_visible[0] = true

view_xport[0] = 0
view_yport[0] = 0
view_wport[0] = global.window_size[0]
view_hport[0] = global.window_size[1]
view_surface_id[0] = application_surface

camera_set_view_size(view_camera[0],global.window_size[0],global.window_size[1])
display_set_gui_size(global.window_size[0],global.window_size[1])

room_set_viewport(room,view_camera[0],true,0,0,global.window_size[0],global.window_size[1])
view_set_wport(view_camera[0],window_get_width())
view_set_hport(view_camera[0],window_get_height())
view_set_xport(view_camera[0],0)
view_set_yport(view_camera[0],0)

self.target = ""
if instance_exists(obj_player){
	self.target = obj_player
}

self.screenshake_x = 0
self.screenshake_y = 0
self.screenshake_time = 0

self.cspeed = .2
self.cx = 0
self.cy = 0

alarm[0] = 1