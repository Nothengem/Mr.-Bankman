extends TouchScreenButton

export var is_active = false

func _ready():
	$AnimationPlayer.play("Pulse") 
	
func hide_buttons():
	visible = false
	$AnimationPlayer.stop() 
	
func show_buttons():
	visible = true
	$AnimationPlayer.play("Pulse") 
