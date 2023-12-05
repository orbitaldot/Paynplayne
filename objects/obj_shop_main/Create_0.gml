alarm[0] = 22
self.state = "greetingss"

self.choices = ["Buy","Talk","EXIT"]
self.selected = 0
self.show_choices = false

event_user(0)
event_user(1)

image_alpha = 1

self.released = true

audio_sound_pitch(sfx_cashhurt,1)