function scr_move_to_point(argument0, argument1, argument2, argument3) {
	var _startx = x
	var _starty = y
	var _destx = argument0
	var _desty = argument1
	var _pathspeed = argument2
	var _smoothen = argument3

	var _mypath = path_add()

	if path_position != 0 || path_position != 1 {
		path_end()	
	}

	path_add_point(_mypath,_startx,_starty,_pathspeed)

	if _smoothen {
		path_add_point(_mypath,_destx,_desty,_smoothen)
	}else{
		path_add_point(_mypath,_destx,_desty,_pathspeed)
	}

	path_start(_mypath,_pathspeed,path_action_stop,true)

	path_set_closed(_mypath,false)
}
