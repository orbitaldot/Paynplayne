if view_get_wport(view_camera[0]) != global.window_size[0] {
	scr_ADJUST_WINDOW()	
}

draw_surface_ext(application_surface,0,0,(window_get_width()/global.window_size[0]),window_get_height()/global.window_size[1],0,c_white,1)
