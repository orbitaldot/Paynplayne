var char = " "
self.printx = 0
self.line = 0


draw_set_font(font_msgothic)
draw_set_colour(c_white)
var col = c_white
for(var i = 1; i < self.printreveal; i++){
	char = string_char_at(self.printstring,i)
	if char == "%" {
		if string_char_at(self.printstring,i+1) == "." {
			self.printx = 0
			++self.line
			i += 2
		}else if string_char_at(self.printstring,i+1) == "+" {
			i += 3
		}else if string_char_at(self.printstring,i+1) == "c" {
			col = self.colours[string_char_at(self.printstring,i+2)]
			i += 3
		}
	}
	if self.shadow {
		draw_set_colour(c_black)
		draw_text(x+self.printx,y+self.line*self.linewidth+2,string_char_at(self.printstring,i))
	}
	
	draw_set_colour(col)
	draw_text(x+self.printx,y+self.line*self.linewidth,string_char_at(self.printstring,i))
	self.printx += string_width(string_char_at(self.printstring,i)) + self.space_adjust
}

if self.printtimer == 0 && !self.complete {
	if string_char_at(self.printstring,i) != " " {
		audio_sound_pitch(global.blipsound,random_range(.95,1.05))
		audio_play_sound(global.blipsound,0,false)
	}
}

if string_pos("//",self.printstring) == self.printreveal {
	self.complete = true
	exit;
}

var dosound = true

if self.printtimer <= 0 {
	self.printreveal++
	char = string_char_at(self.printstring,printreveal)
	var nextspeed = self.printspeed
		
	if string_pos("%+",self.printstring) == printreveal {
		nextspeed = real(string_char_at(self.printstring,printreveal+2))*2
		self.printstring = string_delete(self.printstring,self.printreveal,3)
	}
		
	self.printtimer = nextspeed
}

--self.printtimer 
