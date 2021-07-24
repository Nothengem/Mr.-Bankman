extends Control

func _ready():
	get_tree().call_group("LevelChooseButtons", "prepare_buttons")
	
