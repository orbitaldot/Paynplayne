self.topics = []
self.topics[array_length_1d(self.topics)] = "Who are you"
if global.flags[4] == 0 {
	self.topics[array_length_1d(self.topics)] = "Who am I"
}else if global.flags[4] == 1{
	self.topics[array_length_1d(self.topics)] = "Wait how old are you"
}
self.topics[array_length_1d(self.topics)] = "Why sell to me"
if global.flags[4] == 2 {
	self.topics[array_length_1d(self.topics)] = "You're pretty"
}
if global.flags[5] == 1 {
	self.topics[array_length_1d(self.topics)] = "Stone Head People"
}