extends HSlider


func _ready():
	pass


func _on_HSlider_value_changed(value):
	AudioServer.set_bus_volume_db(0,value)
