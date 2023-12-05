for(var xx = 0; xx < image_xscale; xx++){
	for(var yy = 0; yy < image_yscale; yy++){ 
		draw_sprite(spr_spikes,0,x+xx*20,y+yy*20)		
	}
}

if place_meeting(x,y+10,obj_player){
	if global.inventory[global.inv_selected] != 8 {
		scr_hurt_player(3,40)
	}
}