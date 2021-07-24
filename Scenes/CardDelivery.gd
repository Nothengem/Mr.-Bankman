extends Control

onready var this_scene = get_node(".")
onready var car = get_node("Machine")

var decription_road
onready var danger_left = get_node("Decorations/DangerLeftRoad")
onready var danger_middle = get_node("Decorations/DangerMiddleRoad")
onready var danger_right = get_node("Decorations/DangerRightRoad")

var customer = str("res://Resources/GFX/CustomerWhite.svg")
var machine = str("res://Resources/GFX/CardDelivery/Car.png")
var hole = str("res://Resources/GFX/Banditism Back.png")

var all_dangers = [customer, machine, hole]
var what_danger_hit
var car_previous_position
var times_spawned = 1
var max_times_spawned = 5

var customer_damage_checker = 0
var car_damage_checker = 0
var hole_damage_checker = 0
var crush_result_message
var difficuilt

func _ready():
	Scriptwriter.victory_count = int(Scriptwriter.victory_count) +1
	$AnimationPlayer.play("Appear")
	$RoadChangerTimer.stop()
	spawn_road()
	text_generation()
	difficuilt = Scriptwriter.IventInfo[1]

func spawn_road():
	var scene = load("res://Scenes/CardDelivery/Decorations.tscn")
	var road = scene.instance()
	add_child_below_node($RoadSpawnPosition, road, true)



func _on_RoadChangerTimer_timeout():
	text_generation()
	$AnimationPlayer.play("TextShow")


func next_road():
	if times_spawned <= max_times_spawned:
		times_spawned = times_spawned +1
		get_tree().call_group("Decorations","road_life_stage")
		spawn_road()
	elif times_spawned >= max_times_spawned:
		Scriptwriter.CardChoose = "EventResult"
		get_tree().call_group("MainScene", "spawn")
		if customer_damage_checker > 0 and car_damage_checker > 0 and hole_damage_checker > 0:
			Scriptwriter.Law_var = Scriptwriter.Law_var - customer_damage_checker
			Scriptwriter.Banditism_var = Scriptwriter.Banditism_var + car_damage_checker
			Scriptwriter.Luck_var = Scriptwriter.Luck_var - hole_damage_checker
			#ремонт машины, извенение перед пешеходами, урегулирование проблем с законом
			crush_result_message()
			Scriptwriter.IventInfo[7] = crush_result_message
		elif customer_damage_checker == 0 and car_damage_checker == 0 and hole_damage_checker == 0:
			Scriptwriter.Law_var = Scriptwriter.Law_var + 20
			print("здесь")
		get_tree().call_group("BalanceGUI", "change_proportions_ivent_cardmix")
		queue_free()

func crush_result_message():
	var car_crush = "ЦБ начнут интересоваться всеми авариями. "
	var customer_crush = "Нужно будет извиняться перед пешеходами. "
	var hole_crush = "Ремонт машины влетит в копееечку. "
	crush_result_message = "Эта доставка оказалась убыточной. "
	if car_damage_checker > 0:
		crush_result_message = str(crush_result_message) + str(car_crush)
	if hole_damage_checker > 0:
		crush_result_message = str(crush_result_message) + str(customer_crush)
	if customer_damage_checker > 0:
		crush_result_message = str(crush_result_message) + str(hole_crush)

func text_generation():
	text_generation_helper()
	if difficuilt == 1:
		$RoadDiscription/Label.text = str("По левой полосе " + str(Scriptwriter.danger_left) + "  по середине " + str(Scriptwriter.danger_middle) + " по правой полосе " + str(Scriptwriter.danger_right))
	if difficuilt == 2:
		$RoadDiscription/Label.text = str("Не могу разобрать что на левой полосе " + "  по середине " + str(Scriptwriter.danger_middle) + " по правой полосе " + str(Scriptwriter.danger_right))
	if difficuilt == 3:
		$RoadDiscription/Label.text = str("Не могу разобрать что на левой полосе " + str(Scriptwriter.danger_left) + "  по середине " + str(Scriptwriter.danger_middle) + " не могу разобрать, что на правой полосе")


func text_generation_helper():
	
	if Scriptwriter.CardDeliveryDefault[0] == str(Scriptwriter.CardDeliveryNow[0]):
		Scriptwriter.danger_left = "пешеход"
	elif Scriptwriter.CardDeliveryDefault[1] == str(Scriptwriter.CardDeliveryNow[0]):
		Scriptwriter.danger_left = "машина"
	elif Scriptwriter.CardDeliveryDefault[2] == str(Scriptwriter.CardDeliveryNow[0]):
		Scriptwriter.danger_left = "яма"
	elif !Scriptwriter.CardDeliveryDefault[3] == str(Scriptwriter.CardDeliveryNow[0]):
		Scriptwriter.danger_left = "все чисто"
		
	if Scriptwriter.CardDeliveryDefault[0] == str(Scriptwriter.CardDeliveryNow[1]):
		Scriptwriter.danger_middle = "пешеход"
	elif Scriptwriter.CardDeliveryDefault[1] == str(Scriptwriter.CardDeliveryNow[1]):
		Scriptwriter.danger_middle = "машине"
	elif Scriptwriter.CardDeliveryDefault[2] == str(Scriptwriter.CardDeliveryNow[1]):
		Scriptwriter.danger_middle = "яма"
	elif !Scriptwriter.CardDeliveryDefault[3] == str(Scriptwriter.CardDeliveryNow[1]):
		Scriptwriter.danger_middle = "все чисто"
		
	if Scriptwriter.CardDeliveryDefault[0] == str(Scriptwriter.CardDeliveryNow[2]):
		Scriptwriter.danger_right = "пешеход"
	elif Scriptwriter.CardDeliveryDefault[1] == str(Scriptwriter.CardDeliveryNow[2]):
		Scriptwriter.danger_right = "машина"
	elif Scriptwriter.CardDeliveryDefault[2] == str(Scriptwriter.CardDeliveryNow[2]):
		Scriptwriter.danger_right = "яма"
	elif !Scriptwriter.CardDeliveryDefault[3] == str(Scriptwriter.CardDeliveryNow[2]):
		Scriptwriter.danger_right = "все чисто"



func _on_Area2D_area_entered(area):
	if $Machine.position.x == 260:
		what_danger_hit = Scriptwriter.CardDeliveryinRunning[0]
	elif $Machine.position.x == 540:
		what_danger_hit = Scriptwriter.CardDeliveryinRunning[1]
	elif $Machine.position.x == 820:
		what_danger_hit = Scriptwriter.CardDeliveryinRunning[2]
	
	car_previous_position = $Machine.position
	
	if what_danger_hit == Scriptwriter.CardDeliveryDefault[0]: #human
		$AnimationPlayer.play("CarCustomerReaction")
		customer_damage_checker = customer_damage_checker +5
		$AnimationPlayer2.play("TextPlay")
		$Machine/Sprite4/Label.text = "Пешеход!"
		var a
		if $Machine.position.x >= 540:
			a = $Machine.position + Vector2(-160, 0)
		elif $Machine.position.x < 540:
			a = $Machine.position + Vector2(160, 0)
			
		$Machine/Tween.interpolate_property($Machine, "position", $Machine.position, a, 0.1, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
		$Machine/Tween.start()
		$CarCrashController.start()
		
	elif what_danger_hit == Scriptwriter.CardDeliveryDefault[1]: #car
		$AnimationPlayer.play("CarCarReaction")
		car_damage_checker = car_damage_checker +5
		var a = $Machine.position + Vector2(0, 300)
		$Machine/Tween.interpolate_property($Machine, "position", $Machine.position, a, 0.2, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
		$Machine/Tween.start()
		$CarCrashController.start()
		
	elif what_danger_hit == Scriptwriter.CardDeliveryDefault[2]: #hole
		$AnimationPlayer.play("CarHoleReaction")
		hole_damage_checker = hole_damage_checker +5
		



func _on_CarCrashController_timeout():
	$Machine/Tween.interpolate_property($Machine, "position", $Machine.position, car_previous_position, 0.2, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	$Machine/Tween.start()



func _on_ChooseRoadLeft_released():
	$Machine/Tween.interpolate_property($Machine, "position", $Machine.position, $LeftRoadPostion.position, 0.5, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	$Machine/Tween.start()
	next_road()
	get_tree().call_group("ChooseRoadButton", "hide_buttons")
	hide_text_play()



func _on_ChooseRoadMiddle_released():
	$Machine/Tween.interpolate_property($Machine, "position", $Machine.position, $MiddleRoadPostion.position, 0.5, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	$Machine/Tween.start()
	next_road()
	get_tree().call_group("ChooseRoadButton", "hide_buttons")
	hide_text_play()



func _on_ChooseRoadRight_released():
	$Machine/Tween.interpolate_property($Machine, "position", $Machine.position, $RightRoadPostion.position, 0.5, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	$Machine/Tween.start()
	next_road()
	get_tree().call_group("ChooseRoadButton", "hide_buttons")
	hide_text_play()



func hide_text_play():
	$AnimationPlayer.play("TextHide")
	$RoadChangerTimer.start()




