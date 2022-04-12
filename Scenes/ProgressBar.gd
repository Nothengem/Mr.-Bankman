extends TextureProgress

onready var thisNone = get_node(".")

func _ready():
	victory_count_update()
	thisNone.max_value = Scriptwriter.count_to_victory


func victory_count_update():
	print("отрабатывает")
	$Tween.interpolate_property(thisNone, "value", thisNone.value, Scriptwriter.victory_count, 0.5, Tween.EASE_IN, Tween.EASE_OUT)
	$Tween.start()
	
