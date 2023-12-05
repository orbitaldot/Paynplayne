switch(self.state){
	case "greetingss":
		if global.flags[2] == 0 {
			global.msg[0] = "Oh! %+5You've finally sprouted, %+5I see!//"
			global.msg[1] = "Just call me M. %.I'm a witch.//"
			scr_dialogue(global.msg)
			self.state = "greetingsss"
			global.flags[2] = 1
		}else{
			self.state = "greetings"
		}
		break;
}