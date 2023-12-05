ini_open("pleuch.ini")
global.window_scale = ini_read_real("PLEUCH",1,2)
window_set_size(320*global.window_scale,240*global.window_scale)
ini_close()