y -= self.rise_factor
image_alpha -= self.alpha_factor

if image_alpha < 0 {
	instance_destroy(self)	
}

draw_text_color(x-1,y,self.text,c_black,c_black,c_black,c_black,1)
draw_text_color(x+1,y,self.text,c_black,c_black,c_black,c_black,1)
draw_text_color(x,y-1,self.text,c_black,c_black,c_black,c_black,1)
draw_text_color(x,y+1,self.text,c_black,c_black,c_black,c_black,1)

draw_text_color(x,y,self.text,self.col,self.col,self.col,self.col,1)
