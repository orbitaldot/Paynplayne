if !instance_exists(obj_camera){
	instance_create(0,0,obj_camera)	
}

if !instance_exists(obj_gui) && instance_exists(obj_player){
	instance_create(0,0,obj_gui)	
}

if keyboard_check_pressed(vk_end){
	game_restart()	
}
if keyboard_check_pressed(vk_pageup){
	if room_previous(room) != -1 {
		room_goto_previous()
	}
}else if keyboard_check_pressed(vk_pagedown){
	if room_next(room) != -1 {
		room_goto_next()
	}
}


if global.player_money < 0 {
	global.player_money = 0
}

if global.player_hp <= 0 && global.player_hp != -9999 {
	room_speed = 2
	audio_stop_all()
	alarm[2] = 2
	global.player_hp = -9999
}