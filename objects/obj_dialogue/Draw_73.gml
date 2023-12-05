var a = 0

x = camera_get_view_x(view_camera[0])
y = camera_get_view_y(view_camera[0])

if room != room_shop {
	draw_set_alpha(1)
	draw_set_colour(c_black)
	draw_rectangle(x,y+200,x+400,y+420,false)
}

if global.show_choices {
	draw_set_colour(c_white)
	draw_set_alpha(1)
	draw_set_halign(fa_right)
	for(var i = 0; i < 2; i++){
		if global.choice == i {
			draw_rectangle(x+392,y+203+i*18,x+392-string_width(global.choices[i])-6,y+219+i*18,true)
		}
		draw_text(x+390,y+205+i*18,global.choices[i])
	}
	
	if keyboard_check_pressed(vk_up) {
		if global.choice > 0 {
			global.choice--
		}
	}else if keyboard_check_pressed(vk_down) {
		if global.choice < 1 {
			global.choice++
		}
	}
	
	draw_set_halign(fa_left)
}