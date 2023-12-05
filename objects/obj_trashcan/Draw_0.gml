if self.myinteract == 1 {
	self.released = false
	self.inuse = true
	self.myinteract = 2
}

if self.inuse {
	global.paused = true	
	draw_set_halign(fa_center)
	draw_set_colour(c_black)
	draw_set_alpha(1)
	draw_text(201,190-4,"CHOOSE ITEM TO TOSS, THEN [A]")
	draw_text(199,190-4,"CHOOSE ITEM TO TOSS, THEN [A]")
	draw_text(200,189-4,"CHOOSE ITEM TO TOSS, THEN [A]")
	draw_text(200,191-4,"CHOOSE ITEM TO TOSS, THEN [A]")
	draw_set_colour(c_white)
	draw_text(200,190-4,"CHOOSE ITEM TO TOSS, THEN [A]")
	draw_set_halign(fa_left)
	if keyboard_check_pressed(ord("A")) && self.released{
		global.inventory[global.inv_selected] = 0
		scr_reshuffleinv()
		self.inuse = false
		global.paused = false
		self.myinteract = 0
	}
	
	if keyboard_check_released(ord("A")){
		self.released = true	
	}
	if keyboard_check_pressed(vk_left){
		global.inv_selected--
		if global.inv_selected < 0 {
			global.inv_selected = 4	
		}
	}else if keyboard_check_pressed(vk_right){
		global.inv_selected++
		if global.inv_selected > 4 {
			global.inv_selected = 0
		}
	}
}

draw_sprite(sprite_index,image_index,x,y)