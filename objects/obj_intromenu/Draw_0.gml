self.mytick++

draw_set_alpha(1)
draw_set_font(font_msgothic)
draw_set_halign(fa_center)
draw_set_colour(c_gray)
draw_text(200,40,"by OrbitalBloop, for LD44:")
draw_set_colour(c_white)
draw_set_alpha(1)
draw_text_transformed(200,60,"Paynplayne",2,2,0)

draw_set_halign(fa_left)
draw_text(80,120-14,"[ARROW KEYS]")
draw_text(80,136-14,"[NUMBERS 1-5]")
draw_text(80,152-14,"[Z]")
draw_text(80,168-14,"[X]")
draw_text(80,184-14,"[C]")

draw_text(216,120-14,"MOVE")
draw_text(216,136-14,"INVENTORY")
draw_text(216,152-14,"CONFIRM / INTERACT")
draw_text(216,168-14,"USE SELECTED ITEM")
draw_text(216,184-14,"SKIP TEXT")

draw_set_halign(fa_center)
draw_set_colour(c_lime)
draw_set_alpha(.3+(self.mytick mod 30)/30)
draw_text(200,200,"Press [Z] to Sprout")
draw_set_halign(fa_left)
