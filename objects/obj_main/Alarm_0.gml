
for(var i = 0; i < 4; i++){
	if global.from_id == i && instance_exists(obj_player) {
		var inst = asset_get_index("obj_from" + string(i))
		obj_player.x = inst.x
		obj_player.y = inst.y
	}
}

scr_ADJUST_WINDOW()