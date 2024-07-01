self.inventory = []
self.inventory[array_length(self.inventory)] = ITEMS.HEALTH_POTION
self.inventory[array_length(self.inventory)] = ITEMS.LAZY_SWORD
if global.player_maxhp < 20 {
	self.inventory[array_length(self.inventory)] = ITEMS.HEALTH_UPGRADE
}
self.inventory[array_length(self.inventory)] = ITEMS.LAZY_PICKAXE
self.inventory[array_length(self.inventory)] = ITEMS.STEEL_BOOTS

if self.state == "buy" {
	if self.selected >= array_length(self.inventory)-1 && self.selected != 9999 {
		self.selected = array_length(self.inventory)-1
	}
}