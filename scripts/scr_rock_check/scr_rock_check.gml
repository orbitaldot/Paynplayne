function scr_rock_check(_break=false) {
	var _key = string(room) + "_" + string(x) + "_" + string(y);
	if !_break {
		if !ds_map_exists(global.rocks_destroyed, _key)
			ds_map_add(global.rocks_destroyed, _key, 0);
		else if global.rocks_destroyed[? _key]
			instance_destroy(id);
	} else {
		ds_map_replace(global.rocks_destroyed, _key, 1);
	}
}
