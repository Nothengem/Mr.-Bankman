extends Sprite

onready var Head = $FullHead/Head
onready var Neck = $Neck
onready var Shirt = $Shirt
onready var Eyebrows = $FullHead/Eyebrows
onready var Eyes = $FullHead/Eyes
onready var Forehead = $FullHead/Forehead
onready var Ears = $FullHead/Ears
onready var Jowls = $FullHead/Jowls
onready var Glasses = $FullHead/Glasses
onready var Mouth = $FullHead/Mouth
onready var Hair = $FullHead/Hair
onready var Nose = $FullHead/Nose


func _ready():
	pass 
	

func card_generation():
	if Scriptwriter.CardType == "Characters" or Scriptwriter.CardType == "Tutorial":
		Head.texture = Scriptwriter.CharacterHead
		Neck.texture = Scriptwriter.CharacterNeck
		Shirt.texture = Scriptwriter.CharacterShirt
		Eyebrows.texture = Scriptwriter.CharacterEyebrows
		Eyes.texture = Scriptwriter.CharacterEyes
		Forehead.texture = Scriptwriter.CharacterForehead
		Ears.texture = Scriptwriter.CharacterEars
		Jowls.texture = Scriptwriter.CharacterJowls
		Glasses.texture = Scriptwriter.CharacterGlasses
		Mouth.texture = Scriptwriter.CharacterMouth
		Hair.texture = Scriptwriter.CharacterHair
		Nose.texture = Scriptwriter.CharacterNose
	elif Scriptwriter.CardType != "Characters" or Scriptwriter.CardType != "Tutorial":
		pass
	
func card_portrait_update():
	Scriptwriter.portrait_variables_update()
	card_generation()
