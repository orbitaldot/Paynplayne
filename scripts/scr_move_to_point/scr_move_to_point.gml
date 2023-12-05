var startx = x
var starty = y
var destx = argument0
var desty = argument1
var pathspeed = argument2
var smoothen = argument3

var mypath = path_add()

if path_position != 0 || path_position != 1 {
	path_end()	
}

path_add_point(mypath,startx,starty,pathspeed)

if smoothen {
	path_add_point(mypath,destx,desty,smoothen)
}else{
	path_add_point(mypath,destx,desty,pathspeed)
}

path_start(mypath,pathspeed,path_action_stop,true)

path_set_closed(mypath,false)
