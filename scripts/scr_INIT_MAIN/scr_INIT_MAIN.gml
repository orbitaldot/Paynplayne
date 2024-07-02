function scr_INIT_MAIN() {
	global.game_name = "TEMPLATE"
	global.window_size = [400,240]

	global.window_scale = 2
	
	var _ww = global.window_size[0] * global.window_scale;
	var _wh = global.window_size[1] * global.window_scale;
	
	window_set_size(_ww, _wh);
	window_set_position(
		display_get_width()/2 - _ww/2,
		display_get_height()/2 - _wh/2
	);
	
	scr_ADJUST_WINDOW()
	
	scr_input_setup();

	global.paused = false

	global.msg = []
	global.blipsound = sfx_blip
	global.debug = 0

	global.music = sfx_silence

	global.choices = ["Yes","No"]
	global.choice = -1
	global.show_choices = false

	scr_FLAGS()

	global.from_id = 0


	global.start_room = room_starttext

	audio_group_load(ag_mus)
	audio_group_load(audiogroup_default)

	audio_group_set_gain(ag_mus,.85,0)
	audio_group_set_gain(audiogroup_default,1.1,0)

	with(obj_main){
		alarm[1] = 1
	}

	global.player_hp = 15
	global.player_maxhp = 15
	global.player_money = 0

	global.inventory[0] = 0
	global.inventory[1] = 0
	global.inventory[2] = 0
	global.inventory[3] = 0
	global.inventory[4] = 0
	global.inv_selected = 0
}
