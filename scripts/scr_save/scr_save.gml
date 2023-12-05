var f = argument0

//MAIN
var file = file_text_open_write(string(f) + "/file0")
file_text_write_real(file,global.inventory[0])
file_text_writeln(file)
file_text_write_real(file,room)
file_text_writeln(file)
file_text_write_real(file,global.from_id)
file_text_writeln(file)
file_text_close(file)

//FLAGS
var file = file_text_open_write(string(f) + "/file1")
for(var i = 0; i < array_length_1d(global.flags); i++){
	file_text_write_real(file,global.flags[i])
	file_text_writeln(file)
}
file_text_close(file)

//ds_map_secure_save(global.item_places, "ip" + string(f) + ".dat")

ini_open("pleuch.ini")
ini_write_real("PLEUCH",0,0)
ini_write_real("PLEUCH",1,global.window_scale)
ini_close()