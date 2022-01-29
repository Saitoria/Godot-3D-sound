extends CheckBox


func _ready():
	pass 


func _on_CheckBox_toggled(button_pressed):
	AudioServer.set_bus_bypass_effects(AudioServer.get_bus_index("Reverb"),!button_pressed)
