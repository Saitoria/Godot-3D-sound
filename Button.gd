extends Button

var player
func _ready():
	player = get_tree().get_root().get_node("Node/AudioStreamPlayer")
	


func _on_Button_pressed():
	if get_node("/root/Node/PanelContainer/VBoxContainer/LabelContainer/CheckBoxContainer").pressed == true:
		setLoopMode(player.stream,1)
	else:
		setLoopMode(player.stream,0)
	player.play()

func setLoopMode(stream,loop):
	if(stream is AudioStreamOGGVorbis):
		stream.loop = bool(loop)
	else:
		stream.loop_mode = loop


func _on_Button2_pressed():
	player.stop()
