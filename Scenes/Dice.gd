extends Control

onready var Dice = get_node("NinePatchRect/CenterContainer/VBoxContainer/HBoxContainer/Dice")
onready var Dice2 = get_node("NinePatchRect/CenterContainer/VBoxContainer/HBoxContainer/Dice2")
onready var Dice3 = get_node("NinePatchRect/CenterContainer/VBoxContainer/HBoxContainer2/Dice3")
onready var Dice4 = get_node("NinePatchRect/CenterContainer/VBoxContainer/HBoxContainer2/Dice4")
onready var this_node = get_node(".")
var victory_number = 0
var limited_dice = 2
var Dice_active
var Dice2_active
var Dice3_active
var Dice4_active
var Dice_active_mass = 0 #количество выбранных костей
var first_dice = true
var difficult
var number_to_win #число нужное для победы
onready var Resuilt = get_node("NinePatchRect/CenterContainer/Label")

#переменные радиуса диапазона для выбрасывания кубика
var a
var b

func _ready():
	Scriptwriter.victory_count = int(Scriptwriter.victory_count) +1
	difficult = Scriptwriter.IventInfo[1]
	$Apperiance.play("Appearance")
#	get_tree().call_group("IventCard", "cardupdate_all_text_hide")
	
	if difficult == 1:
		a = 10
		b = 12
	if difficult == 2:
		a = 13
		b = 15
	if difficult == 3:
		a = 16
		b = 19
		
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	number_to_win = int(rng.randf_range(a, b))
	difficult = number_to_win
	victory_number = number_to_win
	Scriptwriter.dice_to_win = number_to_win
	get_tree().call_group("IventCard", "cardupdate_dice")


func counter():
	victory_number = Dice.my_random_number + Dice2.my_random_number + Dice3.my_random_number + Dice4.my_random_number
	Resuilt.text = str(victory_number)

func number_update_plus():
	if Dice_active_mass < limited_dice:
		Dice_active_mass = Dice_active_mass + 1
		limit_control()
		button_blocker()
		
func number_update_minus():
	if Dice_active_mass != 0:
		Dice_active_mass = Dice_active_mass - 1
		limit_control()
		button_blocker()

func limit_control():
	if Dice_active_mass == limited_dice:
		get_tree().call_group("Dice2", "block_cross")
	elif Dice_active_mass < limited_dice:
		get_tree().call_group("Dice2", "unblock_cross")

func button_blocker():
	if Dice_active_mass == 0:
		$Button.disabled = true
	elif Dice_active_mass > 0:
		$Button.disabled = false

func _on_RollDice_animation_finished(RollDice):
	if first_dice == true or Dice2.picked == true:
		$RollDice2.play("RollDice")
	elif !first_dice:
		reroll_dice_chainc_check()

func _on_RollDice2_animation_finished(RollDice):
	if first_dice == true or Dice3.picked == true:
		$RollDice3.play("RollDice")
	elif !first_dice:
		reroll_dice_chainc_check()

func _on_RollDice3_animation_finished(RollDice):
	if first_dice == true or Dice4.picked == true:
		$RollDice4.play("RollDice")
	elif !first_dice:
		finish_of_rolldice()

func _on_RollDice4_animation_finished(RollDice):
	finish_of_rolldice()
	counter()
	Resuilt.visible = true
	
func reroll_dice_chainc_check():
	if Dice.picked:
		$RollDice.play("RollDice")
		Dice.picked = false
	elif Dice2.picked:
		$RollDice2.play("RollDice")
		Dice2.picked = false
	elif Dice3.picked:
		$RollDice3.play("RollDice")
		Dice3.picked = false
	elif Dice4.picked:
		$RollDice4.play("RollDice")
		Dice4.picked = false
	elif !Dice.picked and !Dice2.picked and !Dice3.picked and !Dice4.picked:
		finish_of_rolldice()

func finish_of_rolldice():
	if first_dice == true:
		get_tree().call_group("Dice2", "first_dice")
		counter()
		$Button.text = "Перебросить"
		Resuilt.visible = true
		button_blocker()
		$Button.visible = true
	elif first_dice == false:
		$Button.visible = false
		get_tree().call_group("Dice2", "redice")
		get_tree().call_group("Dice2", "hidecross")
		counter()

func _on_Dice_texture_changed():
	counter()
	win_lose_animation()

func _on_Dice2_texture_changed():
	counter()
	win_lose_animation()

func _on_Dice3_texture_changed():
	counter()
	win_lose_animation()

func _on_Dice4_texture_changed():
	counter()
	win_lose_animation()


func win_lose_animation():
	if victory_number > difficult or victory_number == difficult:
		$Win.stop()
		$Win.play("Win")
#		get_tree().call_group("IventCard", "cardupdate_ivent_win")
	elif victory_number < difficult:
		if first_dice:
			$Lose.stop()
			$Lose.play("Lose")
		elif !first_dice:
			$Lose.stop()
			$Lose.play("Lose")
#			get_tree().call_group("IventCard", "cardupdate_ivent_lose")

		
func _on_Lose_animation_finished(Lose):
	if first_dice:
		first_dice = false
		
	elif !first_dice:
		Scriptwriter.CardChoose = Scriptwriter.NextCardLeft
		get_tree().call_group("MainScene", "spawn")
		if victory_number < difficult:
			Scriptwriter.IventInfo[7] = Scriptwriter.IventInfo[2]
			$Button.visible = false
			$NinePatchRect.visible = false
			Scriptwriter.CardChoose = "EventResult"
			get_tree().call_group("MainScene", "spawn")
			get_tree().call_group("BalanceGUI", "change_proportions_ivent_loose_dice")
		elif victory_number >= difficult:
			$Button.visible = false
			$NinePatchRect.visible = false
			Scriptwriter.CardChoose = "EventResult"
			get_tree().call_group("MainScene", "spawn")
			get_tree().call_group("BalanceGUI", "change_proportions_ivent_win")
		queue_free()


func _on_Win_animation_finished(Win):
	print("win")
	$Button.visible = false
	$NinePatchRect.visible = false
	Scriptwriter.CardChoose = "EventResult"
	get_tree().call_group("MainScene", "spawn")
	get_tree().call_group("BalanceGUI", "change_proportions_ivent_win")
	Scriptwriter.victory_count = int(Scriptwriter.victory_count) +1
	queue_free()



func spawn_result_card():
	var scene = load("res://Scenes/CharacterControl.tscn")
	var card = scene.instance()
	add_child_below_node(this_node, card, true)


func _on_Button_button_up():
	get_tree().call_group("Dice2", "hidecross2")
	if first_dice == true:
		$RollDice.play("RollDice")
	elif !first_dice:
		reroll_dice_chainc_check()
	$Button.visible = false


