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
		Head.texture = load(Scriptwriter.CharacterHead)
		Neck.texture = load(Scriptwriter.CharacterNeck)
		Shirt.texture = load(Scriptwriter.CharacterShirt)
		Eyebrows.texture = load(Scriptwriter.CharacterEyebrows)
		Eyes.texture = load(Scriptwriter.CharacterEyes)
		Forehead.texture = load(Scriptwriter.CharacterForehead)
		Ears.texture = load(Scriptwriter.CharacterEars)
		Jowls.texture = load(Scriptwriter.CharacterJowls)
		Glasses.texture = load(Scriptwriter.CharacterGlasses)
		Mouth.texture = load(Scriptwriter.CharacterMouth)
		Hair.texture = load(Scriptwriter.CharacterHair)
		Nose.texture = load(Scriptwriter.CharacterNose)
	elif Scriptwriter.CardType != "Characters" or Scriptwriter.CardType != "Tutorial":
		pass
	
func card_portrait_update():
	Scriptwriter.portrait_variables_update()
	card_generation()
