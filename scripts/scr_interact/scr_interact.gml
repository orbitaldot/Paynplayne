var w = 5
var h = 15

var m = argument1
var d = argument0

if instance_exists(obj_dialogue){
	exit;	
}

var o = 0
var o2 = 0

switch(d){
	case "right":
		o = collision_rectangle(bbox_left,bbox_top,bbox_right+w,bbox_bottom,obj_interactable,false,true) 
		o2 = collision_rectangle(bbox_left,bbox_top,bbox_right+w,bbox_bottom,obj_s_interactable,false,true) 
		break;
	case "left":
		o = collision_rectangle(bbox_left-w,bbox_top,bbox_right,bbox_bottom,obj_interactable,false,true) 
		o2 = collision_rectangle(bbox_left-w,bbox_top,bbox_right,bbox_bottom,obj_s_interactable,false,true) 
		break;
	case "up":
		o = collision_rectangle(bbox_left,bbox_top-h,bbox_right,bbox_bottom,obj_interactable,false,true) 
		o2 = collision_rectangle(bbox_left,bbox_top-h,bbox_right,bbox_bottom,obj_s_interactable,false,true) 
		break;
	case "down":
		o = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom+h,obj_interactable,false,true) 
		o2 = collision_rectangle(bbox_left,bbox_top,bbox_right,bbox_bottom+h,obj_s_interactable,false,true)
		break;
}

if o != noone {
	if m == 1 {
		with(o){
			self.myinteract = 1	
		}
		show_debug_message("hungee")
	}
	return true
}

if o2 != noone {
	if m == 1 {
		with(o2){
			self.myinteract = 1	
		}
	}
	return true
}

return false