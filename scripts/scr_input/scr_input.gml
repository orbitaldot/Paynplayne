function scr_input_setup() {
	global.input = ds_map_create();
	global.input_pressed = ds_map_create();
	global.input_released = ds_map_create();
	
	var _actions = [
		"left", "right", "up", "down", "action0", "action1", "action2"
	]
	
	for(var _i=0; _i<array_length(_actions); _i++) {
		var _a = _actions[_i];
		ds_map_add(global.input, _a, 0);
		ds_map_add(global.input_pressed, _a, 0);
		ds_map_add(global.input_released, _a, 0);
	}
}

function scr_input_update() {
	var _actions = [
		"left", "right", "up", "down", "action0", "action1", "action2"
	]
	
	var _actions_keys = {
		"left": vk_left,
		"right": vk_right,
		"up": vk_up,
		"down": vk_down,
		"action0": ord("Z"),
		"action1": ord("X"),
		"action2": ord("C")
	}
	
	for(var _i=0; _i<array_length(_actions); _i++) {
		var _a = _actions[_i];
		var _k = struct_get(_actions_keys, _a);
		global.input[? _a] = keyboard_check(_k);
		global.input_pressed[? _a] = keyboard_check_pressed(_k);
		global.input_released[? _a] = keyboard_check_released(_k);
	}
}