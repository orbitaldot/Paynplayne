var f = argument0

var file = file_text_open_read(string(f) + "/file0")
global.inventory[0] = file_text_read_real(file) file_text_readln(file)
global.start_room = file_text_read_real(file) file_text_readln(file)
global.from_id = file_text_read_real(file) file_text_readln(file)
global.playtime = file_text_read_real(file) file_text_readln(file)
global.droptime = file_text_read_real(file) file_text_readln(file)
file_text_close(file)


var file = file_text_open_read(string(f) + "/file1")
for(var i = 0; i < array_length_1d(global.flags); i++){
	global.flags[i] = file_text_read_real(file)	
	file_text_readln(file)
}
ini_close()

ini_open(string(f) + "/i.ini")
var n = ini_read_real("info",0,global.total_items)
for(var i = 1; i <= n; i++){
	global.item_places[? string(i) + "r"] = ini_read_real(i,"r",1)
	global.item_places[? string(i) + "x"] = ini_read_real(i,"x",0)
	global.item_places[? string(i) + "y"] = ini_read_real(i,"y",0)
	global.item_places[? string(i) + "id"] = ini_read_real(i,"id",0)
}