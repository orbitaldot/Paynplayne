if global.paused || instance_exists(obj_dialogue){
	exit;
}

if global.flags[1] != 9999 && self.hurts{
	if place_meeting(x,y,obj_player){
		if scr_hurt_player(1,30) {
			//global.flags[1]++
		}
	}
}