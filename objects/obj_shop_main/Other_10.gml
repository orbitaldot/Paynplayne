self.inventory = []
self.inventory[array_length_1d(self.inventory)] = 1
self.inventory[array_length_1d(self.inventory)] = 2
if global.player_maxhp < 20 {
	self.inventory[array_length_1d(self.inventory)] = 3
}
self.inventory[array_length_1d(self.inventory)] = 5
self.inventory[array_length_1d(self.inventory)] = 8

if self.state == "buy" {
	if self.selected >= array_length_1d(self.inventory)-1 && self.selected != 9999 {
		self.selected = array_length_1d(self.inventory)-1
	}
}