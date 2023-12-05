for(var i = 0; i < array_length_1d(global.inventory)-1; i++){
	if global.inventory[i] == 0 {
		global.inventory[i]	= global.inventory[i+1]
		global.inventory[i+1] = 0
	}
}