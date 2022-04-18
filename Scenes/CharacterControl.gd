extends Area2D

#переменная фиксирующая предыдущую позицию мыши
var previous_mouse_position = Vector2()
var is_dragging = false

#переменная размера экрана
onready var screensize: Vector2 = get_parent().get_viewport().size
var screen_center

#переменные для формулы переещение карточки после выбора
var leftxposition
var rightxposition
onready var thisnode = get_node(".")

var start_position #запоминает стартовую позицию по X, чтобы от неё вести рассчеты наклона и события лево-право
onready var LChoosePos = get_node("LeftChoose") #точка, куда уходит карта при выборе на лево
onready var RChoosePos = get_node("RightChoose") #точка, куда уходит карта при выборе на право
onready var CardRAnswer = get_node("CharacterCard/Control/RightChooseRect/RChooseText") #текст правого ответа
onready var CardLAnswer = get_node("CharacterCard/Control/LeftChooseRect/LChooseText") #текст левого ответа
onready var LChosRect = get_node("CharacterCard/Control/LeftChooseRect")
onready var RChosRect = get_node("CharacterCard/Control/RightChooseRect")
onready var LChosText = get_node("CharacterCard/Control/LeftChooseRect/LChooseText")
onready var RChosText = get_node("CharacterCard/Control/RightChooseRect/RChooseText")
onready var TweenLChosText = get_node("CharacterCard/Control/LeftChooseRect/Tween")
onready var TweenRChosText = get_node("CharacterCard/Control/RightChooseRect/Tween")

onready var Animator = get_node("AnimationPlayer") #текст левого ответа
onready var Card = get_node("CharacterCard")
var fingerseek #переменная для срабатывания анимации шторки ответа


#переменные для облегчения кода
onready var portrait = get_node("CharacterCard/IventPortrait")
onready var Head = get_node("CharacterCard/Character/FullHead/Head")
onready var Neck = get_node("CharacterCard/Character/Neck")
onready var Shirt = get_node("CharacterCard/Character/Shirt")
onready var Eyebrows = get_node("CharacterCard/Character/FullHead/Eyebrows")
onready var Eyes = get_node("CharacterCard/Character/FullHead/Eyes")
onready var Forehead = get_node("CharacterCard/Character/FullHead/Forehead")
onready var Ears = get_node("CharacterCard/Character/FullHead/Ears")
onready var Jowls = get_node("CharacterCard/Character/FullHead/Jowls")
onready var Glasses = get_node("CharacterCard/Character/FullHead/Glasses")
onready var Mouth = get_node("CharacterCard/Character/FullHead/Mouth")
onready var Hair = get_node("CharacterCard/Character/FullHead/Hair")
onready var Nose = get_node("CharacterCard/Character/FullHead/Nose")

onready var thisNode = get_node(".")
onready var mainScene = get_node("..")

#переменные обозначающие что карточка сейчас в правой или левой позиции, нужна для анимаций изменения цвета индикаторов и 
var right_position = false
var left_position = false
var middle_position = false


func _ready():
	start_position = thisNode.position
	cardGeneration()


func cardGeneration():
	
#	start_position = thisNode.position
#	start_position = centerPoint.position
	leftxposition = Vector2(-1500, 1104)
	rightxposition = Vector2(1500, 1104)
	
	print(leftxposition)
	print(rightxposition)
	
	get_tree().call_group("Dossier", "dossier_update")
	
	if !Scriptwriter.Heath_var <= 0 and !Scriptwriter.Law_var <= 0 and !Scriptwriter.Banditism_var <= 0 and !Scriptwriter.Luck_var <= 0 and !Scriptwriter.Heath_var >= 100 and !Scriptwriter.Law_var >= 100 and !Scriptwriter.Banditism_var >= 100 and !Scriptwriter.Luck_var >= 100:
		if Scriptwriter.FirstCard == true:
			Scriptwriter.CardChoose = Scriptwriter.level_cards[0]
			Scriptwriter.card_var_generator()
			Scriptwriter.FirstCard = false
			Scriptwriter.victory_count = int(Scriptwriter.victory_count) + 1
			
		elif  !Scriptwriter.FirstCard and Scriptwriter.CardType == "Tutorial" and Scriptwriter.CardType != "Characters":
			Scriptwriter.card_var_generator()
			
		elif !Scriptwriter.FirstCard and Scriptwriter.CardChoose == "StatusScreen" or Scriptwriter.CardChoose =="EventResult":
			Scriptwriter.card_var_generator()
			Animator.play("Appearance")
			if Scriptwriter.CardChoose == "EventResult":
				get_tree().call_group("IventCard", "cardupdate_all_text_hide")
			
		elif !Scriptwriter.FirstCard and Scriptwriter.CardChoose == "Random":
			Scriptwriter.card_var_generator()
			
		elif !Scriptwriter.FirstCard and !Scriptwriter.CardChoose == "Random" and !Scriptwriter.CardChoose == "Tutorial":
			Scriptwriter.card_var_generator()
			
			
	elif !Scriptwriter.FirstCard and Scriptwriter.Heath_var <= 0 or Scriptwriter.Law_var <= 0 or Scriptwriter.Banditism_var <= 0 or Scriptwriter.Luck_var <= 0 or Scriptwriter.Heath_var >= 100 or Scriptwriter.Law_var >= 100 or Scriptwriter.Banditism_var >= 100 or Scriptwriter.Luck_var >= 100:
			Scriptwriter.CardChoose = "LooseScreen"
			Scriptwriter.losecard()
	


func ready_NextCardLose_helper():
	if Scriptwriter.Heath_var <= 0:
		Scriptwriter.NextCardInfo = Scriptwriter.CardDataBase.DATA.get("LooseTopHealth")
	elif Scriptwriter.Law_var <= 0:
		Scriptwriter.NextCardInfo = Scriptwriter.CardDataBase.DATA.get("LooseTopLaw")
	elif Scriptwriter.Banditism_var <= 0:
		Scriptwriter.NextCardInfo = Scriptwriter.CardDataBase.DATA.get("LooseTopBanditism")
	elif Scriptwriter.Luck_var <= 0:
		Scriptwriter.NextCardInfo = Scriptwriter.CardDataBase.DATA.get("LooseTopLuck")
	elif Scriptwriter.Heath_var >= 100:
		Scriptwriter.NextCardInfo = Scriptwriter.CardDataBase.DATA.get("LooseBottomHealth")
	elif Scriptwriter.Law_var >= 100:
		Scriptwriter.NextCardInfo = Scriptwriter.CardDataBase.DATA.get("LooseBottomLaw")
	elif Scriptwriter.Banditism_var >= 100:
		Scriptwriter.NextCardInfo = Scriptwriter.CardDataBase.DATA.get("LooseBottomBanditism")
	elif Scriptwriter.Luck_var >= 100:
		Scriptwriter.NextCardInfo = Scriptwriter.CardDataBase.DATA.get("LooseBottomLuck")



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
		
	elif Scriptwriter.CardType == "LooseScreen" or Scriptwriter.CardType == "StatusScreen":
		$CharacterCard/Character.visible = false
		$CharacterCard/IventPortrait.self_modulate = Color("ffffff")
		Scriptwriter.CharacterPortrait = Scriptwriter.CardImage #костыль!
		$CharacterCard/IventPortrait.texture = load(Scriptwriter.CharacterPortrait)
		$CharacterCard/Control.visible = false
#		if Scriptwriter.CardType == "LooseScreen":
#			get_tree().call_group("NextCharacterCard", "hide")
	elif Scriptwriter.CardType == "EventResult":
		$CharacterCard/Character.visible = false
		$CharacterCard/IventPortrait.visible = false
		$CharacterCard/Control.visible = false
		$CharacterCard/TextItog.visible = true
		$CharacterCard/TextItog/Label.text = Scriptwriter.IventInfo[7]
		
		
	if !Scriptwriter.Heath_var <= 0 and !Scriptwriter.Law_var <= 0 and !Scriptwriter.Banditism_var <= 0 and !Scriptwriter.Luck_var <= 0 and !Scriptwriter.Heath_var >= 100 and !Scriptwriter.Law_var >= 100 and !Scriptwriter.Banditism_var >= 100 and !Scriptwriter.Luck_var >= 100:
		CardRAnswer.text = Scriptwriter.CardLAnswer
		CardLAnswer.text = Scriptwriter.CardRAnswer
	elif Scriptwriter.Heath_var <= 0 or Scriptwriter.Law_var <= 0 or Scriptwriter.Banditism_var <= 0 or Scriptwriter.Luck_var <= 0 or Scriptwriter.Heath_var >= 100 or Scriptwriter.Law_var >= 100 or Scriptwriter.Banditism_var >= 100 or Scriptwriter.Luck_var >= 100:
		CardRAnswer.text = "Что значит Банку конец?!"
		CardLAnswer.text = "Я не виноват!"


func choosedone():
	get_tree().call_group("BalanceGUI", "white_indicatos_color")
	if thisNode.position.x < 300:
		if Scriptwriter.CardType =="Tutorial":
			Scriptwriter.CardChoose = Scriptwriter.NextCardLeft
			choosedone_next_card_left()
			
		elif Scriptwriter.CardType == "Characters" or Scriptwriter.CardType == "Tutorial" or Scriptwriter.CardType == "StatusScreen":
			Scriptwriter.CardChoose = Scriptwriter.NextCardLeft
			get_tree().call_group("BalanceGUI", "victory_count_update")
			get_tree().call_group("BalanceGUI", "change_proportions_left")
			choosedone_next_card_left()
		
		elif Scriptwriter.CardType == "EventResult":
			Scriptwriter.CardChoose = Scriptwriter.NextCardLeft
			choosedone_next_card_left()
			
		elif Scriptwriter.CardType == "LooseScreen":
			choosedone_loose()

	if thisNode.position.x > 800:
		if Scriptwriter.CardType =="Tutorial":
			Scriptwriter.CardChoose = Scriptwriter.NextCardRight
			choosedone_next_card_right()
			
		elif Scriptwriter.CardType == "Characters" or Scriptwriter.CardType == "Tutorial" or Scriptwriter.CardType == "StatusScreen":
			Scriptwriter.CardChoose = Scriptwriter.NextCardRight

			get_tree().call_group("BalanceGUI", "victory_count_update")
			
			if Scriptwriter.CardType != "Tutorial" and Scriptwriter.CharacterTechicalName != "Mr. Bankman" and Scriptwriter.CharacterTechicalName != "Bantonio Anderas":
				if Scriptwriter.NameRule == true:
					if Scriptwriter.dossierName != Scriptwriter.CardName:
						Scriptwriter.feedBackMessage = "не совпало имя"
						get_tree().call_group("MainScene", "messageFeedBack")
						Scriptwriter.HealthRightChoose = -50
						
				if Scriptwriter.AgeRule == true:
					if str(Scriptwriter.dossierAge) < str(Scriptwriter.ruleAgeMin) or \
					str(Scriptwriter.dossierAge) > str(Scriptwriter.ruleAgeMax):
						Scriptwriter.feedBackMessage = "не проходит по возрасту"
						get_tree().call_group("MainScene", "messageFeedBack")
						Scriptwriter.HealthRightChoose = -50
						
				if Scriptwriter.SexRule == true:
					if Scriptwriter.dossierSex == Scriptwriter.ruleSex:
						Scriptwriter.feedBackMessage = "не проходит по полу"
						get_tree().call_group("MainScene", "messageFeedBack")
						Scriptwriter.LawRightChoose = +50
						
				if Scriptwriter.CountryRule == true:
					if !(Scriptwriter.dossierNational in Scriptwriter.ruleNational):
						Scriptwriter.feedBackMessage = "не подходит по национальности"
						get_tree().call_group("MainScene", "messageFeedBack")
						Scriptwriter.LawRightChoose = -50
						
				if Scriptwriter.HistoryRule == true:
					if Scriptwriter.dossierCreditHistory != Scriptwriter.ruleCreditHistory:
						Scriptwriter.feedBackMessage = "плохая кредитная история"
						get_tree().call_group("MainScene", "messageFeedBack")
						Scriptwriter.LuckRightChoose = -50
					
				if Scriptwriter.BlackListRule == true:
					if Scriptwriter.dossierBlackList != Scriptwriter.ruleBlackList:
						Scriptwriter.feedBackMessage = "в черном списке"
						get_tree().call_group("MainScene", "messageFeedBack")
						Scriptwriter.BanditismRightChoose = -50
				
				if Scriptwriter.RatingRule == true:
					if !(Scriptwriter.dossierCreditRaiting in Scriptwriter.ruleLoanRating):
						Scriptwriter.feedBackMessage = "слабый кредитный рейтинг"
						get_tree().call_group("MainScene", "messageFeedBack")
						Scriptwriter.LuckRightChoose = -50
				
				if Scriptwriter.PhotoRule == true:
					if Scriptwriter.CardInfo[1] == Scriptwriter.falsePortrait:
						Scriptwriter.feedBackMessage = "не совпало фото"
						get_tree().call_group("MainScene", "messageFeedBack")
						Scriptwriter.HealthRightChoose = -50
					
				if Scriptwriter.WhatForRule == true:
					if Scriptwriter.dossierBankRlationPurpose[Scriptwriter.WhatFor] in Scriptwriter.ruleOfLevel[7][0]:
						Scriptwriter.feedBackMessage = "не совпала цель"
						get_tree().call_group("MainScene", "messageFeedBack")
						Scriptwriter.HealthRightChoose = -50
						
			if Scriptwriter.permissionToDenide == false:
				get_tree().call_group("BalanceGUI", "change_proportions_right")
			elif Scriptwriter.permissionToDenide == true:
				get_tree().call_group("BalanceGUI", "denide_photo_and_name_correction")
				get_tree().call_group("BalanceGUI", "change_proportions_right")
				Scriptwriter.permissionToDenide = false
			choosedone_next_card_right() #здесь остановка
			
		elif Scriptwriter.CardType == "EventResult":
			Scriptwriter.CardChoose = Scriptwriter.NextCardRight
			choosedone_next_card_right()
			
		elif Scriptwriter.CardChoose == "LooseScreen":
			choosedone_loose()



func choosedone_next_card_left():
	if Scriptwriter.NextCardLeft == "Random" and Scriptwriter.CardType != "Tutorial":
		Scriptwriter.victory_count = int(Scriptwriter.victory_count) + 1
	
	if Scriptwriter.victory_count < Scriptwriter.count_to_victory:
		if Scriptwriter.NextCardLeft != "Ivent":
				mainScene.spawn()
	elif Scriptwriter.victory_count == Scriptwriter.count_to_victory:
		get_tree().call_group("MainScene", "win_the_level")
	get_tree().call_group("BalanceGUI", "yellow_indicatos_color_middle")
	



func choosedone_next_card_right():
	if Scriptwriter.NextCardRight == "Random" and Scriptwriter.CardType != "Tutorial":
		Scriptwriter.victory_count = int(Scriptwriter.victory_count) + 1
	
	if Scriptwriter.victory_count < Scriptwriter.count_to_victory:
			
		if Scriptwriter.NextCardRight == "Ivent":
			if Scriptwriter.IventInfo[0] == "Dice":
				get_tree().call_group("MainScene", "spawn_dice")
			elif Scriptwriter.IventInfo[0] == "CardMix":
				get_tree().call_group("MainScene", "spawn_cardmix")
			elif Scriptwriter.IventInfo[0] == "Status":
				get_tree().call_group("MainScene", "spawn")
			elif Scriptwriter.IventInfo[0] == "Roulette":
				get_tree().call_group("MainScene", "spawn_roulette")
			elif Scriptwriter.IventInfo[0] == "Pendulum":
				get_tree().call_group("MainScene", "spawn_pendulum")
			elif Scriptwriter.IventInfo[0] == "CardDelivery":
				get_tree().call_group("MainScene", "spawn_card_delivery")
				
		elif Scriptwriter.NextCardRight != "Ivent":
			mainScene.spawn()
		
	elif Scriptwriter.victory_count == Scriptwriter.count_to_victory:
		get_tree().call_group("MainScene", "win_the_level")
	get_tree().call_group("BalanceGUI", "yellow_indicatos_color_middle")



func choosedone_loose():
	get_tree().call_group("BalanceGUI", "yellow_indicatos_color_middle")
	Scriptwriter.victory_count = -1
	get_tree().call_group("MainScene", "restart_game")
	queue_free()



func _input(event):
	if InputEventScreenTouch:
		var a = start_position.x + (start_position.x/2)
		var b = start_position.x - (start_position.x/2)
		if position.x > a:
			right_position = true
			left_position = false
			middle_position = false
		elif position.x < b:
			right_position = false
			left_position = true
			middle_position = false
		elif position.x < a and position.x > b:
			right_position = false
			left_position = false
			middle_position = true
			
		if not is_dragging:
			return
			
		if event.is_action_released("ui_touch"):
			previous_mouse_position = Vector2()
			is_dragging = false
		
		
	if is_dragging and event is InputEventMouseMotion:
#		$Tween.stop(thisnode, "position")
#		$Tween.stop(thisnode, "rotation_degrees")
		
		position += event.position - previous_mouse_position
		previous_mouse_position = event.position
		chooseanimationReturnToZero()
		rotationos()
		chooseanimationRight()
		chooseanimationLeft()
		chooseanimationDown()
		if Scriptwriter.CardType == "Characters" or Scriptwriter.CardType == "Tutorial":
			chooseanimationReturnToZero()
			chooseanimationRight()
			chooseanimationLeft()
			chooseanimationDown()
			
	if not event is InputEventMouseMotion and not event is InputEventScreenDrag:
		if not event.pressed:
			character_card_released()
#			choosedone()
			Animator.stop(true)
			chooseanimationReturnToZero()
			get_tree().call_group("BalanceGUI", "white_indicatos_color")
			right_position = false
			left_position = false
			middle_position = true



func rotationos(): # анимация поворота при смещении влево-вправо
	balance_color_prechoose()
	if (position.x) > start_position.x:
		var a = position.x - start_position.x
		a = a * 0.02
		rotation_degrees = a
		get_tree().call_group("BalanceGUI", "yellow_indicatos_color")
	elif (position.x) < start_position.x:
		var a = position.x - start_position.x
		a = a * 0.02
		rotation_degrees = a
		get_tree().call_group("BalanceGUI", "yellow_indicatos_color")

func chooseanimationReturnToZero():
	Animator.play("LChooseText")
	Animator.seek(0, true)
	Animator.stop()
	Animator.play("RChooseText")
	Animator.seek(0, true)
	Animator.stop()
	$NeedTo/AnimationPlayer.play("Appearance")
	$NeedTo/AnimationPlayer.seek(0, true)
	$NeedTo/AnimationPlayer.stop()



func chooseanimationRight():
	Animator.play("RChooseText")
	var a = start_position.x
	var b = start_position.x*3
	fingerseek = (position.x - a)/b
	Animator.current_animation = "RChooseText"
	Animator.stop(false)
	Animator.seek(fingerseek, true)



func chooseanimationLeft():
	Animator.play("LChooseText")
	var a = start_position.x
	var b = start_position.x*3
	fingerseek = -(position.x - a)/b
	Animator.stop(false)
	Animator.seek(fingerseek, true)

func chooseanimationDown():
	$NeedTo/AnimationPlayer.play("Appearance")
	var a = start_position.y
	var b = start_position.y*3
	fingerseek = (position.y - a)/b
	$NeedTo/AnimationPlayer.stop(false)
	$NeedTo/AnimationPlayer.seek(fingerseek, true)


func balance_color_prechoose():
	if right_position:
		get_tree().call_group("BalanceGUI", "yellow_indicatos_color_right")
	elif left_position:
		get_tree().call_group("BalanceGUI", "yellow_indicatos_color_left")
	elif middle_position:
		get_tree().call_group("BalanceGUI", "yellow_indicatos_color_middle")




func character_card_released():
	
	if position.x < start_position.x -200:
		print("лево")
		$Tween.interpolate_property(thisnode, "position", thisnode.position, 
		leftxposition, 0.2, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
		$Tween.start()
#		$AnimationPlayer.play("HideAnimation")
		$Timer_choosedone.start()
		
	if position.x > start_position.x +200:
		print("право")
		$Tween.interpolate_property(thisnode, "position", thisnode.position, 
		rightxposition, 0.2, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
		$Tween.start()
#		$AnimationPlayer.play("HideAnimation")
		$Timer_choosedone.start()
		
	if position.x < start_position.x +200 and position.x > start_position.x -200:
		print("центр")
		$Tween.interpolate_property(thisnode, "position", thisnode.position, 
		Scriptwriter.MainCardsBack, 1.2, Tween.TRANS_ELASTIC, Tween.EASE_OUT)
		$Tween.start()
		$Tween.interpolate_property(thisnode, "rotation_degrees", thisnode.rotation_degrees, 
		0, 1.2, Tween.TRANS_ELASTIC, Tween.EASE_OUT)
		
	get_tree().call_group("BalanceGUI", "progress_pre_choose_animation_return")


#Vector2(540, 1100)  если что удалить. это переменная куда возвращаться карточке при отпускании

func to_see_losecard():
	$CharacterCard/CharacterPortrait.visible = true
	$CharacterCard/CharacterPortrait.texture = Scriptwriter.CharacterPortrait



#как всегда костыльное решение запускает таймер по истечении которого проверяется в какой пози
func _on_Timer_choosedone_timeout():
	if Scriptwriter.CardType == "StatusScreen" and Scriptwriter.StatusInfo[0] == "Status":
		get_tree().call_group("IventStatus", "start_new_status")
	choosedone()
	



#срабатывают по касанию пальца
func _on_CharacterControl_input_event(_viewport, event, _shape_idx):
	if event.is_action_pressed("ui_touch"):
		get_tree().set_input_as_handled()
		previous_mouse_position = event.position
		is_dragging = true

func tweenBack():
		$Tween.interpolate_property(thisnode, "position", thisnode.position, 
		Scriptwriter.MainCardsBack, 0.1, Tween.TRANS_ELASTIC, Tween.EASE_OUT)
		$Tween.start()
		$Tween.interpolate_property(thisnode, "rotation_degrees", thisnode.rotation_degrees, 
		0, 0.1, Tween.TRANS_ELASTIC, Tween.EASE_OUT)
