extends TextureButton


func _ready():
	prepare_buttons()
	
func prepare_buttons():
	$Label.text = $".".name
	if int(Scriptwriter.levels_complete) >= int($".".name):
		pass
	elif int(Scriptwriter.levels_complete) < int($".".name):
		disable()

func disable():
	$".".self_modulate = Color(898989)
	$Label.visible = false
	$TextureRect.visible = true
	$".".disabled = true


func _on_1_pressed():
	if $".".disabled == false:
		if int($".".name) != 7:
			Scriptwriter.CurrentLevel = "LVL" + str($".".name)
			Scriptwriter.level_was_choosen = str($".".name)
			Scriptwriter.level_massive_generator()
			if get_tree().change_scene("res://Scenes/MainScene.tscn") != OK:
				print ("An unexpected error occured when trying to switch to the Readme scene (MainScene)")
			Scriptwriter.level_was_choosen = int($".".name)
		elif int($".".name) == 6:
			if get_tree().change_scene("res://Scenes/WinScene.tscn") != OK:
				print ("An unexpected error occured when trying to switch to the Readme scene (WinScene)")
	elif $".".disabled == true:
		pass

