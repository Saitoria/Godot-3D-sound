extends Node

func _ready():
	var player = AudioStreamPlayer.new()
	self.add_child(player)
	player.stream = load("res://Juhani Junkala [Chiptune Adventures] 4. Stage Select.wav")
	player.play()
