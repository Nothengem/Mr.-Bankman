extends Control

#Переменные для выбора на лево
onready var LeftPortrait = get_node("CharacterCardLeft/Character")
onready var LeftHead = get_node("CharacterCardLeft/Character/FullHead/Head")
onready var LeftNeck = get_node("CharacterCardLeft/Character/Neck")
onready var LeftShirt = get_node("CharacterCardLeft/Character/Shirt")
onready var LeftEyebrows = get_node("CharacterCardLeft/Character/FullHead/Eyebrows")
onready var LeftEyes = get_node("CharacterCardLeft/Character/FullHead/Eyes")
onready var LeftForehead = get_node("CharacterCardLeft/Character/FullHead/Forehead")
onready var LeftEars = get_node("CharacterCardLeft/Character/FullHead/Ears")
onready var LeftJowls = get_node("CharacterCardLeft/Character/FullHead/Jowls")
onready var LeftGlasses = get_node("CharacterCardLeft/Character/FullHead/Glasses")
onready var LeftMouth = get_node("CharacterCardLeft/Character/FullHead/Mouth")
onready var LeftHair = get_node("CharacterCardLeft/Character/FullHead/Hair")
onready var LeftNose = get_node("CharacterCardLeft/Character/FullHead/Nose")

#Переменные для выбора на право
onready var RightPortrait = get_node("CharacterCardRight/Character")
onready var RightHead = get_node("CharacterCardRight/Character/FullHead/Head")
onready var RightNeck = get_node("CharacterCardRight/Character/Neck")
onready var RightShirt = get_node("CharacterCardRight/Character/Shirt")
onready var RightEyebrows = get_node("CharacterCardRight/Character/FullHead/Eyebrows")
onready var RightEyes = get_node("CharacterCardRight/Character/FullHead/Eyes")
onready var RightForehead = get_node("CharacterCardRight/Character/FullHead/Forehead")
onready var RightEars = get_node("CharacterCardRight/Character/FullHead/Ears")
onready var RightJowls = get_node("CharacterCardRight/Character/FullHead/Jowls")
onready var RightGlasses = get_node("CharacterCardRight/Character/FullHead/Glasses")
onready var RightMouth = get_node("CharacterCardRight/Character/FullHead/Mouth")
onready var RightHair = get_node("CharacterCardRight/Character/FullHead/Hair")
onready var RightNose = get_node("CharacterCardRight/Character/FullHead/Nose")

#переменные с помощью которых достаём значения портретов
var left_choose_portrait
var right_choose_portrait

#переменные карточек
onready var CharacterCardLeft = get_node("CharacterCardLeft/Character")
onready var CharacterCardRight = get_node("CharacterCardRight/Character")

func ready():
	$CharacterCardLeft/AnimationPlayer.queue_free()
	$CharacterCardRight/AnimationPlayer.queue_free()
	

func got_left_right_choose_portraits():
	left_choose_portrait = Scriptwriter.NextCardLeft
	right_choose_portrait = Scriptwriter.NextCardRight
	if right_choose_portrait == "StatusScreen":
		right_choose_portrait = Scriptwriter.CardInfo[16]
	find_name_of_portraits()
	print("левая карта, ", Scriptwriter.NextCardLeft)
	print("правая карта, ", Scriptwriter.NextCardRight)
	print("------------------------------------------")


func find_name_of_portraits():
	if !left_choose_portrait == "Random":
		left_choose_portrait = Scriptwriter.CardDataBase.DATA.get(left_choose_portrait)
		left_choose_portrait = left_choose_portrait[1]
		left_choose_portrait = Scriptwriter.CharacterPortraitDataBase.DATA.get(left_choose_portrait)
		
	elif left_choose_portrait == "Random" and Scriptwriter.victory_count +1 < Scriptwriter.count_to_victory:
		left_choose_portrait = Scriptwriter.level_cards[Scriptwriter.victory_count+1]
		left_choose_portrait = Scriptwriter.CardDataBase.DATA.get(left_choose_portrait)
		left_choose_portrait = left_choose_portrait[1]
		print("найденный левый, ", left_choose_portrait)
		left_choose_portrait = Scriptwriter.CharacterPortraitDataBase.DATA.get(left_choose_portrait)
		
	if !right_choose_portrait == "Random":
		if !right_choose_portrait == "Ivent" and !right_choose_portrait == "StatusScreen":
			right_choose_portrait = Scriptwriter.CardDataBase.DATA.get(right_choose_portrait)
			right_choose_portrait = right_choose_portrait[1]
			right_choose_portrait = Scriptwriter.CharacterPortraitDataBase.DATA.get(right_choose_portrait)
			
		elif right_choose_portrait == "Ivent" or Scriptwriter.CardIvent == "StatusScreen":
			right_choose_portrait = Scriptwriter.CharacterPortraitDataBase.DATA.get("Ivent")
		
	elif right_choose_portrait == "Random" and Scriptwriter.victory_count +1 < Scriptwriter.count_to_victory:
		right_choose_portrait = Scriptwriter.level_cards[Scriptwriter.victory_count+1]
		print("проверяем какая следующая карта на уровне, ", right_choose_portrait)
		right_choose_portrait = Scriptwriter.CardDataBase.DATA.get(right_choose_portrait)
		right_choose_portrait = right_choose_portrait[1]
		print("найденный правый, ", right_choose_portrait)
		right_choose_portrait = Scriptwriter.CharacterPortraitDataBase.DATA.get(right_choose_portrait)
	$Timer.start()



func _on_Timer_timeout():
	nextcardupdate()


func nextcardupdate():
	if Scriptwriter.CardChoose == "LooseScreen":
		visible = false
	elif Scriptwriter.CardChoose != "LooseScreen":
		LeftHead.texture = load (str("res://Resources/GFX/CharacterCotaint/Head", "/", left_choose_portrait[0], ".png"))
		LeftNeck.texture = load (str ("res://Resources/GFX/CharacterCotaint/Neck", "/", left_choose_portrait[1], ".png"))
		LeftShirt.texture = load (str ("res://Resources/GFX/CharacterCotaint/Shirt", "/", left_choose_portrait[2], ".png"))
		LeftEyebrows.texture = load (str ("res://Resources/GFX/CharacterCotaint/Eyebrows", "/", left_choose_portrait[3], ".png"))
		LeftEyes.texture = load (str ("res://Resources/GFX/CharacterCotaint/Eyes", "/", left_choose_portrait[4], ".png"))
		LeftForehead.texture = load (str ("res://Resources/GFX/CharacterCotaint/Forehead", "/", left_choose_portrait[5], ".png"))
		LeftEars.texture = load (str ("res://Resources/GFX/CharacterCotaint/Ears", "/", left_choose_portrait[6], ".png"))
		LeftJowls.texture = load (str ("res://Resources/GFX/CharacterCotaint/Jowls", "/", left_choose_portrait[7], ".png"))
		LeftGlasses.texture = load (str ("res://Resources/GFX/CharacterCotaint/Glasses", "/", left_choose_portrait[8], ".png"))
		LeftMouth.texture = load (str ("res://Resources/GFX/CharacterCotaint/Mouth", "/", left_choose_portrait[9], ".png"))
		LeftHair.texture = load (str ("res://Resources/GFX/CharacterCotaint/Hair", "/", left_choose_portrait[10], ".png"))
		LeftNose.texture = load (str ("res://Resources/GFX/CharacterCotaint/Nose", "/", left_choose_portrait[11], ".png"))
		
		RightHead.texture = load (str ("res://Resources/GFX/CharacterCotaint/Head", "/", right_choose_portrait[0], ".png"))
		RightNeck.texture = load (str ("res://Resources/GFX/CharacterCotaint/Neck", "/", right_choose_portrait[1], ".png"))
		RightShirt.texture = load (str ("res://Resources/GFX/CharacterCotaint/Shirt", "/", right_choose_portrait[2], ".png"))
		RightEyebrows.texture = load (str ("res://Resources/GFX/CharacterCotaint/Eyebrows", "/", right_choose_portrait[3], ".png"))
		RightEyes.texture = load (str ("res://Resources/GFX/CharacterCotaint/Eyes", "/", right_choose_portrait[4], ".png"))
		RightForehead.texture = load (str ("res://Resources/GFX/CharacterCotaint/Forehead", "/", right_choose_portrait[5], ".png"))
		RightEars.texture = load (str ("res://Resources/GFX/CharacterCotaint/Ears", "/", right_choose_portrait[6], ".png"))
		RightJowls.texture = load (str ("res://Resources/GFX/CharacterCotaint/Jowls", "/", right_choose_portrait[7], ".png"))
		RightGlasses.texture = load (str ("res://Resources/GFX/CharacterCotaint/Glasses", "/", right_choose_portrait[8], ".png"))
		RightMouth.texture = load (str ("res://Resources/GFX/CharacterCotaint/Mouth", "/", right_choose_portrait[9], ".png"))
		RightHair.texture = load (str ("res://Resources/GFX/CharacterCotaint/Hair", "/", right_choose_portrait[10], ".png"))
		RightNose.texture = load (str ("res://Resources/GFX/CharacterCotaint/Nose", "/", right_choose_portrait[11], ".png"))

func right_card_fade():
	$Tween.interpolate_property(CharacterCardRight, "modulate", CharacterCardRight.modulate, Color("00ffffff"), 0.05, Tween.TRANS_LINEAR, Tween.EASE_OUT)
	$Tween.start()
	
	$Tween.interpolate_property(CharacterCardLeft, "modulate", CharacterCardLeft.modulate, Color("ffffff"), 0.05, Tween.TRANS_LINEAR, Tween.EASE_OUT)
	$Tween.start()
	
	if $CharacterCardRight/IventPortrait.self_modulate == Color("ffffff"):
		$Tween.interpolate_property($CharacterCardRight/IventPortrait, "self_modulate", $CharacterCardRight/IventPortrait.self_modulate, Color("00ffffff"), 0.05, Tween.TRANS_LINEAR, Tween.EASE_OUT)
		$Tween.start()
	
func right_card_appear():
	$Tween.interpolate_property(CharacterCardRight, "modulate", CharacterCardRight.modulate, Color("ffffff"), 0.05, Tween.TRANS_LINEAR, Tween.EASE_OUT)
	$Tween.start()
	
	$Tween.interpolate_property(CharacterCardLeft, "modulate", CharacterCardLeft.modulate, Color("00ffffff"), 0.05, Tween.TRANS_LINEAR, Tween.EASE_OUT)
	$Tween.start()
	
	if $CharacterCardRight/IventPortrait.self_modulate == Color("ffffff"):
		$Tween.interpolate_property($CharacterCardRight/IventPortrait, "self_modulate", $CharacterCardRight/IventPortrait.self_modulate, Color("00ffffff"), 0.05, Tween.TRANS_LINEAR, Tween.EASE_OUT)
		$Tween.start()
	

func ivent_card_appear():
	$Tween.interpolate_property(CharacterCardLeft, "modulate", CharacterCardLeft.modulate, Color("00ffffff"), 0.05, Tween.TRANS_LINEAR, Tween.EASE_OUT)
	$Tween.start()
	
	$Tween.interpolate_property(CharacterCardRight, "modulate", CharacterCardRight.modulate, Color("ffffff"), 0.05, Tween.TRANS_LINEAR, Tween.EASE_OUT)
	$Tween.start()
	
	$Tween.interpolate_property($CharacterCardRight/IventPortrait, "self_modulate", $CharacterCardRight/IventPortrait.self_modulate, Color("ffffff"), 0.05, Tween.TRANS_LINEAR, Tween.EASE_OUT)
	$Tween.start()



func hide():
	visible = false
