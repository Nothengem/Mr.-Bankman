extends Node

var previous_mouse_position = Vector2()
var is_dragging = false
onready var tutorialScenario = get_node("TutorialSсenario")


func _ready():
	
	if int(Scriptwriter.CurrentLevel[-1]) >= 3:
		Scriptwriter.NameRule = true
		Scriptwriter.PhotoRule = true
	
	Scriptwriter.MainCardsBack = Vector2($Control.rect_pivot_offset.x, $Control.rect_pivot_offset.y*1.15)
	
	Scriptwriter.FirstCard = true
	$Control/AnimationPlayer2.play("Appearance")
	
	if str(Scriptwriter.CurrentLevel) == "LVL1":
		$Control/Dossier.visible = false
		$Control/DossierButton.visible = false
		$Control/DayRules.visible = false
		$Control/DayRulesButton.visible = false
#		$Control/DayRules.text_generations()
	elif str(Scriptwriter.CurrentLevel) == "LVL2" or str(Scriptwriter.CurrentLevel) == "LVL3":
		$Control/Dossier.visible = false
		$Control/DossierButton.visible = false
		$Control/DayRules.text_generations()
	elif str(Scriptwriter.CurrentLevel) != "LVL1" or str(Scriptwriter.CurrentLevel) != "LVL2" or str(Scriptwriter.CurrentLevel) != "LVL3":
		$Control/DayRules.text_generations()
#		$Control/DayRules/Passport/LoanRating/Description2.text = "none"
	



func Oldspawn():
	var scene = load("res://Scenes/CharacterControl.tscn")
	var card = scene.instance()
	add_child_below_node($Control, card, true)
	if Scriptwriter.CurrentLevel == "LVL1" and Scriptwriter.CardType == "Tutorial":
		tutorialScenario.levelOneScenario()
	elif Scriptwriter.CardType != "Tutorial":
		tutorialScenario.stopAnimations()
		

#func _process(delta):
#	print($CharacterControl.position)


func spawn():
	$CharacterControl.visible = false
	$CharacterControl.cardGeneration()
	
	$CharacterControl.visible = true
	$CharacterControl/AnimationPlayer.play("Apperiance")
	if Scriptwriter.CurrentLevel == "LVL1" and Scriptwriter.CardType == "Tutorial":
		tutorialScenario.levelOneScenario()
	elif Scriptwriter.CardType != "Tutorial":
		tutorialScenario.stopAnimations()

func spawn_dice():
	var scene = load("res://Scenes/Dice.tscn")
	var card = scene.instance()
	add_child_below_node($Control, card, true)

func spawn_cardmix():
	var scene = load("res://Scenes/thimbles.tscn")
	var card = scene.instance()
	add_child_below_node($Control, card, true)

func spawn_roulette():
	var scene = load("res://Scenes/Roulette.tscn")
	var card = scene.instance()
	add_child_below_node($Control, card, true)

func spawn_pendulum():
	var scene = load("res://Scenes/Pendulum.tscn")
	var card = scene.instance()
	add_child_below_node($Control, card, true)

func spawn_card_delivery():
	var scene = load("res://Scenes/CardDelivery.tscn")
	var card = scene.instance()
	add_child_below_node($Control/BalanceGUI, card, true)

func background_fade():
	$AnimationPlayer.play("FadeBackGround")


func restart_game():
	Scriptwriter.FirstCard = true
	Scriptwriter.level_massive_generator()
	if get_tree().change_scene("res://Scenes/StartMenu.tscn") != OK:
		print ("An unexpected error occured when trying to switch to the Readme scene (StartMenu)")


func win_the_game():
	if get_tree().change_scene("res://Scenes/WinScene.tscn") != OK:
		print ("An unexpected error occured when trying to switch to the Readme scene (WinScene)")

func win_the_level():
	get_tree().call_group("CharacterControl", "queue_free")
	$Control/AnimationPlayer.play("LevelComplete")
	if Scriptwriter.level_was_choosen >= Scriptwriter.levels_complete:
		Scriptwriter.levels_complete = Scriptwriter.levels_complete +1
	

func _on_CharacterControl_input_event(_viewport, event, _shape_idx):
	if event.is_action_pressed("ui_touch"):
		get_tree().set_input_as_handled()
		previous_mouse_position = event.position
		is_dragging = true
		
func messageFeedBack():
	$Control/MessagesFeedBack/Message.text = Scriptwriter.feedBackMessage
	$Control/MessagesFeedBack.play("FeedBack")
		

func _on_AnimationPlayer_animation_finished(_LevelComplete):
	$Control/AnimationPlayer.play("TapTextPulse")


func _on_LevelCompleteTap_released():
	if get_tree().change_scene("res://Scenes/LevelChooseScreen.tscn") != OK:
		print ("An unexpected error occured when trying to switch to the Readme scene (LevelChooseScreen)")


func _on_AnimationPlayer_animation_started(_LevelComplete):
	get_tree().call_group("Ivent", "queue_free")


func _on_AnimationPlayer2_animation_finished(_Appearance):
	spawn()


func _on_TouchScreenButton_pressed():
	$Control/DossierButton/AnimationPlayer.play("MekaPassportBig")


func _on_TouchScreenButton_released():
	$Control/DossierButton/AnimationPlayer.play("MekaPassportSmall")


func _on_DayRulesButton_pressed():
	$Control/DayRulesButton/AnimationPlayer.play("MakeDayRullesBig")


func _on_DayRulesButton_released():
	$Control/DayRulesButton/AnimationPlayer.play("MakeDayRullesSmall")
	


func _on_CheckBox_pressed():
	if $CheckBox.pressed == true:
		$AudioStreamPlayer.stop()
	elif $CheckBox.pressed == false:
		$AudioStreamPlayer.play()


