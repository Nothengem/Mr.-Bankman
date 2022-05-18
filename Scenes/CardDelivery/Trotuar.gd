extends Sprite

onready var ObjOne = get_node("Object1")
onready var ObjTwo = $Object2
onready var ObjThree = $Object3
onready var ObjFour = $Object4
onready var ObjFive = $Object5
onready var ObjSix = $Object6
onready var ObjSeven = $Object7
onready var ObjEight = $Object8
onready var ObjNine = $Object9

var tree_or_building
var tree_number
var building_number
var objtexture
var one
var my_random_number = 1

func _ready():
	tree_or_building_decor()
	objtexture = one
	ObjOne.texture = load(objtexture)
	
	tree_or_building_decor()
	objtexture = one
	ObjTwo.texture = load(objtexture) 
	
	tree_or_building_decor()
	objtexture = one
	ObjThree.texture = load(objtexture)
	
	tree_or_building_decor()
	objtexture = one
	ObjFour.texture = load(objtexture) 
	
	tree_or_building_decor()
	objtexture = one
	ObjFive.texture = load(objtexture) 
	
	tree_or_building_decor()
	objtexture = one
	ObjSix.texture = load(objtexture) 
	
	tree_or_building_decor()
	objtexture = one
	ObjSeven.texture = load(objtexture)
	
	tree_or_building_decor()
	objtexture = one
	ObjEight.texture = load(objtexture)
	
	tree_or_building_decor()
	objtexture = one
	ObjNine.texture = load(objtexture) 

func tree_or_building_decor():
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	tree_or_building = int(rng.randf_range(1, 3))
	
	
	if tree_or_building == 1:
		rng = RandomNumberGenerator.new()
		rng.randomize()
		tree_number = int(rng.randf_range(1, 3))
		one = str("res://Resources/GFX/CardDelivery/Tree", tree_number, ".png")
		
	elif tree_or_building == 2:
		rng = RandomNumberGenerator.new()
		rng.randomize()
		building_number = int(rng.randf_range(1, 4))
		one = str("res://Resources/GFX/CardDelivery/Building", building_number, ".png")

