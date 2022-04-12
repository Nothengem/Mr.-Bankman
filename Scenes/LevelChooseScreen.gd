extends Control

func _ready():
	if Scriptwriter.levels_complete == 1:
		$AnimationPlayer.play("LevelChooseTutorial")

func hide():
	$AnimationPlayer.play("Hide")
