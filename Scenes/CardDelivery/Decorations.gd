extends Control

export var is_active = false
export var road_life_stage_var = 1 #1 дорога появилась, 2 дорога активная, 3 дорога должна уйти

var customer = str("res://Resources/GFX/CustomerWhite.svg")
var car = str("res://Resources/GFX/CardDelivery/Car.png")
var hole = str("res://Resources/GFX/Banditism Back.png")
var nothing

var my_random_number

var all_dangers = [customer, car, hole]



func _ready():
	danger_generation()
	is_activate()



func danger_generation():
	all_dangers.shuffle()
	
	var how_many_delete = RandomNumberGenerator.new()
	how_many_delete.randomize()
	how_many_delete = int(how_many_delete.randf_range(1, 3))
	
	for _i in range(how_many_delete):
		all_dangers.remove(all_dangers[0])
		_i += 1
		all_dangers.append(nothing)
	all_dangers.shuffle()
	
	if all_dangers[0] == nothing:
		$DangerLeftRoad.queue_free()
	elif !all_dangers[0] == nothing:
		$DangerLeftRoad.texture = load(all_dangers[0])
	if all_dangers[1] == nothing:
		$DangerMiddleRoad.queue_free()
	elif !all_dangers[1] == nothing:
		$DangerMiddleRoad.texture = load(all_dangers[1])
	if all_dangers[2] == nothing:
		$DangerRightRoad.queue_free()
	elif !all_dangers[2] == nothing:
		$DangerRightRoad.texture = load(all_dangers[2])



func is_activate():
	if is_active == false:
		$AnimationPlayer.play("RoadAppera")
		$AnimationPlayer.seek(1, true)
		$AnimationPlayer.stop()
	elif is_active == true:
		Scriptwriter.CardDeliveryNow = all_dangers



func road_life_stage():
	if road_life_stage_var == 1:
		$AnimationPlayer.play("RoadAppera")
		road_life_stage_var = 2
		is_active = true
		is_activate()
	elif road_life_stage_var == 2:
		$AnimationPlayer.play("RoadBehind")
		road_life_stage_var = 3
		Scriptwriter.CardDeliveryinRunning = all_dangers
	elif road_life_stage_var == 3:
		$AnimationPlayer.play("RoadBehind")


func _on_AnimationPlayer_animation_finished(_RoadBehind):
	get_tree().call_group("ChooseRoadButton", "show_buttons")
	
	if road_life_stage_var == 3:
		queue_free()



func _on_AnimationPlayer2_animation_finished(_RoadAppera):
	is_active =  true
	
