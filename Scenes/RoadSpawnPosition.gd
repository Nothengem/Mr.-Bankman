extends Position2D


func _ready():
	var scene = load("res://Scenes/CardDelivery/Decorations.tscn")
	var road = scene.instance()
	add_child_below_node($RoadSpawnPosition, road, true)
