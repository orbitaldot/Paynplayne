var w = 5
var h = 5

var d = argument0

var o = obj_coll

switch(d){
	case "right":
		if collision_rectangle(bbox_left,bbox_top,bbox_right+w,bbox_bottom,o,false,true){
			return false	
		}
		break;
	case "left":
		if collision_rectangle(bbox_left-w,bbox_top,bbox_right,bbox_bottom,o,false,true){
			return false
		}
		break;
	case "up":
		if collision_rectangle(bbox_left,bbox_top-h,bbox_right,bbox_bottom,o,false,true){
			return false
		}
		break;
	case "down":
		if collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom+h,o,false,true){
			return false
		}
		break;
}

return true