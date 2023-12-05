if global.inventory[0] == 0 {
	global.inventory[0] = argument0
	obj_player.values[3] = 8
	if is_real(argument0){
		global.item_places[? string(argument0) + "r"] = 1
	}
		
	return true
}
return false