extends Path2D


func _ready():
	$StaticBody2D/CollisionPolygon2D.polygon = curve.tessellate()
