extends Control



var left_point_pendulum = 67.5
var right_point_pendulum = -69
var way_to_right_pendulum = true

var left_point_zero
var right_point_zero
var way_to_right_zero = false

var left_point_one
var right_point_one
var way_to_right_one = false

var left_point_two
var right_point_two
var way_to_right_two = false

onready var array_bad = [$Sprite/FloorTwo/BadDifficulty2, 
$Sprite/FloorTwo/Difficulty3/Bad1, $Sprite/FloorTwo/Difficulty3/Bad2,
$Sprite/FloorTwo/Difficulty3/Bad3, $Sprite/FloorTwo/Difficulty3/Bad4,
$Sprite/FloorTwo/Difficulty3/Bad5, $Sprite/FloorTwo/Difficulty3/Bad6,
$Sprite/FloorTwo/Difficulty3/Bad7]

onready var array_neutral = [$Sprite/FloorOne/NeutralDifficulty1, 
$Sprite/FloorOne/NeutralDifficulty3]

onready var array_good = [ $Sprite/FloorZero/GoodDifficulty1, 
$Sprite/FloorZero/GoodDifficulty2]

var pendulum_stop = false

var cast_point

var difficulty


func _ready():
	Scriptwriter.victory_count = int(Scriptwriter.victory_count) +1
	difficulty = Scriptwriter.IventInfo[1]
	
	if difficulty == 1:
		left_point_zero = -4.5
		right_point_zero = -125
		left_point_one = -4
		right_point_one = -124
		$Sprite/FloorZero/GoodDifficulty2.queue_free()
		$Sprite/FloorOne/NeutralDifficulty3.queue_free()
		$Sprite/FloorTwo.queue_free()
		
	if difficulty == 2:
		left_point_zero = 0
		right_point_zero = -128.5
		left_point_one = -4
		right_point_one = -124
		left_point_two = -0.3
		right_point_two = -126.5
		$Sprite/FloorZero/GoodDifficulty1.queue_free()
		$Sprite/FloorOne/NeutralDifficulty3.queue_free()
		$Sprite/FloorTwo/Difficulty3.queue_free()
		$Sprite/FloorTwo.rotation_degrees = right_point_two
		
	if difficulty == 3:
		left_point_zero = 0
		right_point_zero = -128.5
		left_point_one = -0.5
		right_point_one = -126.5
		$Sprite/FloorZero/GoodDifficulty1.queue_free()
		$Sprite/FloorOne/NeutralDifficulty1.queue_free()
		$Sprite/FloorTwo/BadDifficulty2.queue_free()
		
	$Sprite/FloorZero.rotation_degrees = right_point_zero
	$Sprite/FloorOne.rotation_degrees = right_point_one
	$AnimationPlayer.play("Appearance")
	

func _on_AnimationPlayer_animation_finished(Appearance):
	get_tree().call_group("IventCard", "cardupdate_pendulum")
	$Sprite/Line2D.rotation_degrees = left_point_pendulum
	$Sprite/Timer_amplitude.start() #запуск маятника
	
	if difficulty == 1:
		$Sprite/FloorZero/TimerZero.start() #запуск самого нижнего этажа (подвала)
		$Sprite/FloorOne/TimerOne.start() #запуск высокого этажа (2 этаж)
		way_zero()
		way_one()
		
	if difficulty == 2:
		$Sprite/FloorTwo/TimerTwo.start()
		$Sprite/FloorZero/TimerZero.start() #запуск самого нижнего этажа (подвала)
		$Sprite/FloorOne/TimerOne.start() #запуск среднего этажа (1 этаж)
		way_zero()
		way_one()
		way_two()
		
	if difficulty == 3:
		$Sprite/FloorZero/TimerZero.start() #запуск самого нижнего этажа (подвала)
		$Sprite/FloorOne/TimerOne.start() #запуск среднего этажа (1 этаж)
		way_zero()
		way_one()
		
	$StopButton.visible = true
	
	$Sprite/Tween.interpolate_property($Sprite/Line2D, "rotation_degrees", $Sprite/Line2D.rotation_degrees, right_point_pendulum, $Sprite/Timer_amplitude.wait_time, Tween.TRANS_SINE, Tween.EASE_IN)
	$Sprite/Tween.start()
	way_to_right_pendulum = false
	
func way_zero():
	$Sprite/Tween.interpolate_property($Sprite/FloorZero, "rotation_degrees", $Sprite/FloorZero.rotation_degrees, left_point_zero, $Sprite/FloorZero/TimerZero.wait_time, Tween.TRANS_SINE, Tween.EASE_IN)
	$Sprite/Tween.start()
	way_to_right_zero = true
func way_one():
	$Sprite/Tween.interpolate_property($Sprite/FloorOne, "rotation_degrees", $Sprite/FloorOne.rotation_degrees, left_point_one, $Sprite/FloorOne/TimerOne.wait_time, Tween.TRANS_SINE, Tween.EASE_IN)
	$Sprite/Tween.start()
	way_to_right_one = true
func way_two():
	$Sprite/Tween.interpolate_property($Sprite/FloorTwo, "rotation_degrees", $Sprite/FloorTwo.rotation_degrees,left_point_two, $Sprite/FloorTwo/TimerTwo.wait_time, Tween.TRANS_SINE, Tween.EASE_IN)
	$Sprite/Tween.start()
	way_to_right_two = true



func _physics_process(delta):
	cast_point = Vector2($Sprite/Line2D/RayCast2D.cast_to)
	
	if $Sprite/Line2D/RayCast2D.is_colliding():
		cast_point = $Sprite/Line2D/RayCast2D.to_local($Sprite/Line2D/RayCast2D.get_collision_point())
		$Sprite/Line2D.points[1] = Vector2(cast_point)
	elif !$Sprite/Line2D/RayCast2D.is_colliding():
		cast_point = Vector2(0, 705)
		$Sprite/Line2D.points[1] = cast_point
	$Sprite/Line2D/CastingParticleCollision.position = cast_point



func _on_Timer_amplitude_timeout():
	if way_to_right_pendulum:
		$Sprite/Tween.interpolate_property($Sprite/Line2D, "rotation_degrees", $Sprite/Line2D.rotation_degrees, right_point_pendulum, $Sprite/Timer_amplitude.wait_time, Tween.TRANS_SINE, Tween.EASE_IN)
		$Sprite/Tween.start()
		way_to_right_pendulum = false
	elif !way_to_right_pendulum:
		$Sprite/Tween.interpolate_property($Sprite/Line2D, "rotation_degrees", $Sprite/Line2D.rotation_degrees, left_point_pendulum, $Sprite/Timer_amplitude.wait_time, Tween.TRANS_SINE, Tween.EASE_IN)
		$Sprite/Tween.start()
		way_to_right_pendulum = true



func _on_TimerZero_timeout():
	if way_to_right_zero:
		$Sprite/Tween.interpolate_property($Sprite/FloorZero, "rotation_degrees", $Sprite/FloorZero.rotation_degrees, right_point_zero, $Sprite/FloorZero/TimerZero.wait_time, Tween.TRANS_SINE, Tween.EASE_IN)
		$Sprite/Tween.start()
		way_to_right_zero = false
	elif !way_to_right_zero:
		$Sprite/Tween.interpolate_property($Sprite/FloorZero, "rotation_degrees", $Sprite/FloorZero.rotation_degrees, left_point_zero, $Sprite/FloorZero/TimerZero.wait_time, Tween.TRANS_SINE, Tween.EASE_IN)
		$Sprite/Tween.start()
		way_to_right_zero = true



func _on_TimerOne_timeout():
	if way_to_right_one:
		$Sprite/Tween.interpolate_property($Sprite/FloorOne, "rotation_degrees", $Sprite/FloorOne.rotation_degrees, right_point_one, $Sprite/FloorOne/TimerOne.wait_time, Tween.TRANS_SINE, Tween.EASE_IN)
		$Sprite/Tween.start()
		way_to_right_one = false
	elif !way_to_right_one:
		$Sprite/Tween.interpolate_property($Sprite/FloorOne, "rotation_degrees", $Sprite/FloorOne.rotation_degrees, left_point_one, $Sprite/FloorOne/TimerOne.wait_time, Tween.TRANS_SINE, Tween.EASE_IN)
		$Sprite/Tween.start()
		way_to_right_one = true



func _on_TimerTwo_timeout():
	if way_to_right_two:
		$Sprite/Tween.interpolate_property($Sprite/FloorTwo, "rotation_degrees", $Sprite/FloorTwo.rotation_degrees, right_point_two, $Sprite/FloorTwo/TimerTwo.wait_time, Tween.TRANS_SINE, Tween.EASE_IN)
		$Sprite/Tween.start()
		way_to_right_two = false
	elif !way_to_right_two:
		$Sprite/Tween.interpolate_property($Sprite/FloorTwo, "rotation_degrees", $Sprite/FloorTwo.rotation_degrees, left_point_two, $Sprite/FloorTwo/TimerTwo.wait_time, Tween.TRANS_SINE, Tween.EASE_IN)
		$Sprite/Tween.start()
		way_to_right_two = true



func _on_StopButton_released():
	get_tree().call_group("IventCard", "cardupdate_all_text_hide")
	$StopButton.visible = false
	if difficulty == 1:
		$Sprite/FloorZero/TimerZero.stop()
		$Sprite/FloorOne/TimerOne.stop()
	if difficulty == 2:
		$Sprite/FloorZero/TimerZero.stop()
		$Sprite/FloorOne/TimerOne.stop()
		$Sprite/FloorTwo/TimerTwo.stop()
	if difficulty == 3:
		$Sprite/FloorZero/TimerZero.stop()
		$Sprite/FloorOne/TimerOne.stop()
	$Sprite/Timer_amplitude.stop()

	$Sprite/Tween.stop_all()
	check_collision()
	

func check_collision():
	var a = $Sprite/Line2D/RayCast2D.get_collider()
	
	if array_good.has(a):
		$Sprite/Tween.interpolate_property($Sprite/Line2D, "default_color", $Sprite/Line2D.default_color, Color(25000,25500,0,255), 0.5, Tween.TRANS_SINE, Tween.EASE_IN_OUT)
		$Sprite/Tween.start()
		get_tree().call_group("BalanceGUI", "change_proportions_ivent_win")
		$Timer_free.start()
		
	elif array_neutral.has(a):
		$Sprite/Tween.interpolate_property($Sprite/Line2D, "default_color", $Sprite/Line2D.default_color, Color(255,229,245,255), 0.5, Tween.TRANS_SINE, Tween.EASE_IN_OUT)
		$Sprite/Tween.start()
		$Timer_free.start()
		
	elif array_bad.has(a) or a == null:
		$Sprite/Tween.interpolate_property($Sprite/Line2D, "default_color", $Sprite/Line2D.default_color, Color(3030,0,0,255), 0.5, Tween.TRANS_SINE, Tween.EASE_IN_OUT)
		$Sprite/Tween.start()
		get_tree().call_group("BalanceGUI", "change_proportions_ivent_loose_dice")
		$Timer_free.start()
		Scriptwriter.IventInfo[7] = Scriptwriter.IventInfo[2]
	$Sprite/Line2D.points[1] = Vector2(cast_point)



func _on_Timer_free_timeout():
	queue_free()
	Scriptwriter.CardChoose = "EventResult"
	get_tree().call_group("MainScene", "spawn")
	
