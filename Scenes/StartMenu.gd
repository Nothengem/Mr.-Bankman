extends Control

func _ready():
	$AnimationPlayer.play("PressTapText")
	
	
func _input(event): # если мы касаемся экрана или тянем карту и пока палец нажат, работает поворот и анимация влево-вправо
	if  (event is InputEventScreenTouch and not event.is_pressed()): #event is InputEventScreenDrag or
		if get_tree().change_scene("res://Scenes/LevelChooseScreen.tscn") != OK:
			print ("An unexpected error occured when trying to switch to the Readme scene (LevelChooseScreen)")
		
