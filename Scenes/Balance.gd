extends Control

onready var HealthProgress = get_node("Control2/NinePatchRect/IndicatorBox/HBoxContainer/HealthProgress")
onready var LawProgress = get_node("Control2/NinePatchRect/IndicatorBox/HBoxContainer/LawProgress")
onready var BanditismProgress = get_node("Control2/NinePatchRect/IndicatorBox/HBoxContainer/BanditismProgress")
onready var LuckProgress = get_node("Control2/NinePatchRect/IndicatorBox/HBoxContainer/LuckProgress")
onready var ShineEffectHealth = get_node("Control2/NinePatchRect/IndicatorBox/HBoxContainer/ShineEffectHealth")
onready var ShineEffectLaw = get_node("Control2/NinePatchRect/IndicatorBox/HBoxContainer/ShineEffectLaw")
onready var ShineEffectBanditism = get_node("Control2/NinePatchRect/IndicatorBox/HBoxContainer/ShineEffectBanditism")
onready var ShineEffectLuck = get_node("Control2/NinePatchRect/IndicatorBox/HBoxContainer/ShineEffectLuck")



#переменные для измененяи размеров индикаторов
var scale_max = Vector2(1.2, 1.2)
var scale_norm = Vector2(1, 1)
var scale_speed = 0.3
var shineScaleNorm = Vector2(0.1, 0.1)
var shineScaleMax = Vector2(1.8, 3.6)

#переменные для коррекции после победы в ивентах
var Modi
var a
var b

#переменные для фиксации статусов
var IventSlot1
var IventSlot1Speed
var IventUpSlot1
var IventSlot2
var IventSlot2Speed
var IventUpSlot2
var IventSlot3
var IventSlot3Speed
var IventUpSlot3
var IventSlot4
var IventSlot4Speed
var IventUpSlot4

#переменная костыль, для нормальной отработки баланса
var firstTime = false

func _ready():
	Scriptwriter.Heath_var = 50
	Scriptwriter.Law_var = 50
	Scriptwriter.Banditism_var = 50
	Scriptwriter.Luck_var = 50
	victory_count_update()



func change_proportions_right():
	
	#это костыль, т.к. не смог разобраться с багой почему баланс применяется от следующей карты, а не текущей
	var s = str(Scriptwriter.level_cards[Scriptwriter.victory_count - 1])
#	var v = Scriptwriter.CardDataBase.DATA.get(Scriptwriter.CardChoose)
	var v = Scriptwriter.CardInfo
	print(Scriptwriter.CardInfo)
	if firstTime:
		print(Scriptwriter.CardChoose)
		print(v[s])
		print(v[s][10])
		Scriptwriter.HealthRightChoose = v[s][10]
		Scriptwriter.LawRightChoose = v[s][11]
		Scriptwriter.BanditismRightChoose = v[s][12]
		Scriptwriter.LuckRightChoose = v[s][13]
	elif !firstTime:
		firstTime = true
	
	
	Scriptwriter.Heath_var = Scriptwriter.Heath_var + Scriptwriter.HealthRightChoose
	animate_value_health(HealthProgress.value, Scriptwriter.Heath_var)
	
	Scriptwriter.Law_var = Scriptwriter.Law_var + Scriptwriter.LawRightChoose
	animate_value_law(LawProgress.value, Scriptwriter.Law_var)
	
	Scriptwriter.Banditism_var = Scriptwriter.Banditism_var + Scriptwriter.BanditismRightChoose
	animate_value_banditism(BanditismProgress.value, Scriptwriter.Banditism_var)
	
	Scriptwriter.Luck_var = Scriptwriter.Luck_var + Scriptwriter.LuckRightChoose
	animate_value_luck(LuckProgress.value, Scriptwriter.Luck_var)



func change_proportions_left():
	
	#это костыль, т.к. не смог разобраться с багой почему баланс применяется от следующей карты, а не текущей
	var s = str(Scriptwriter.level_cards[Scriptwriter.victory_count - 1])
	var v = Scriptwriter.CardDataBase.DATA.get(Scriptwriter.CardChoose)
	
	#костыль, возвращает показатели баланса на предыдущю карту
	if firstTime:
		Scriptwriter.HealthLeftChoose = v[s][6]
		Scriptwriter.LawLeftChoose = v[s][7]
		Scriptwriter.BanditismLeftChoose = v[s][8]
		Scriptwriter.LuckLeftChoose = v[s][9]
	elif !firstTime:
		firstTime = true
	
	if Scriptwriter.CardType == "Characters" and \
	Scriptwriter.dossierBankRlationPurpose[Scriptwriter.WhatFor] in \
	Scriptwriter.ruleWhatFor: #проверяем, что запрос клиента совпадает с запретом
		denide_photo_and_name_correction()
	
	Scriptwriter.Heath_var = Scriptwriter.Heath_var + Scriptwriter.HealthLeftChoose
	animate_value_health(HealthProgress.value, Scriptwriter.Heath_var)
	
	Scriptwriter.Law_var = Scriptwriter.Law_var + Scriptwriter.LawLeftChoose
	animate_value_law(LawProgress.value, Scriptwriter.Law_var)
	
	Scriptwriter.Banditism_var = Scriptwriter.Banditism_var + Scriptwriter.BanditismLeftChoose
	animate_value_banditism(BanditismProgress.value, Scriptwriter.Banditism_var)
	
	Scriptwriter.Luck_var = Scriptwriter.Luck_var + Scriptwriter.LuckLeftChoose
	animate_value_luck(LuckProgress.value, Scriptwriter.Luck_var)
	
	



func change_proportions_ivent_loose_dice():
	Scriptwriter.Heath_var = int(Scriptwriter.Heath_var + Scriptwriter.IventInfo[3])
	animate_value_health(HealthProgress.value, Scriptwriter.Heath_var)
	
	Scriptwriter.Law_var = Scriptwriter.Law_var + Scriptwriter.IventInfo[4]
	animate_value_law(LawProgress.value, Scriptwriter.Law_var)
	
	Scriptwriter.Banditism_var = Scriptwriter.Banditism_var + Scriptwriter.IventInfo[5]
	animate_value_banditism(BanditismProgress.value, Scriptwriter.Banditism_var)
	
	Scriptwriter.Luck_var = Scriptwriter.Luck_var + Scriptwriter.IventInfo[6]
	animate_value_luck(LuckProgress.value, Scriptwriter.Luck_var)



func change_proportions_ivent_cardmix():
	animate_value_health(HealthProgress.value, Scriptwriter.Heath_var)
	animate_value_law(LawProgress.value, Scriptwriter.Law_var)
	animate_value_banditism(BanditismProgress.value, Scriptwriter.Banditism_var)
	animate_value_luck(LuckProgress.value, Scriptwriter.Luck_var)



func change_proportions_ivent_win(): #применение модификатора коррекции
	Modi = Scriptwriter.IventInfo[9]
	
	if Scriptwriter.IventInfo[8] == "Team":
		b = Scriptwriter.Heath_var
		correction_calculating()
		Scriptwriter.Heath_var = b
		animate_value_health(HealthProgress.value, Scriptwriter.Heath_var)
		
	elif Scriptwriter.IventInfo[8] == "Customers":
		b = Scriptwriter.Law_var
		correction_calculating()
		Scriptwriter.Law_var = b
		animate_value_law(LawProgress.value, Scriptwriter.Law_var)
		
	elif Scriptwriter.IventInfo[8] == "CentralBank":
		b = Scriptwriter.Banditism_var
		correction_calculating()
		Scriptwriter.Banditism_var = b
		animate_value_banditism(BanditismProgress.value, Scriptwriter.Banditism_var)
		
	elif Scriptwriter.IventInfo[8] == "Money":
		b = Scriptwriter.Luck_var
		correction_calculating()
		Scriptwriter.Luck_var = b
		animate_value_luck(LuckProgress.value, Scriptwriter.Luck_var)



func correction_calculating():
	if b < 50:
		b = b + Modi
	elif b > 50:
		b = b - Modi
	elif b == 50:
		pass
		
func denide_photo_and_name_correction():
	Scriptwriter.Heath_var = denide_photo_and_name_correction_helper(Scriptwriter.Heath_var)
	Scriptwriter.Law_var = denide_photo_and_name_correction_helper(Scriptwriter.Law_var)
	Scriptwriter.Banditism_var = denide_photo_and_name_correction_helper(Scriptwriter.Banditism_var)
	Scriptwriter.Luck_var = denide_photo_and_name_correction_helper(Scriptwriter.Luck_var)
		
func denide_photo_and_name_correction_helper(alpha):
	if alpha < 50:
		alpha = alpha + 10
	elif alpha > 50:
		alpha = alpha - 10
	elif alpha == 50:
		alpha = 50
	return alpha
		

#Когда-нибудь повторить
#func correction_calculating_Banditism():
#	a = 50 - Scriptwriter.Banditism_var
#	if a > 0:
#		while a != 0 or Modi != 0:
#			Scriptwriter.Banditism_var +=1
#			a -=1
#			Modi -=1
#	elif a < 0:
#		while a != 0 or Modi != 0:
#			Scriptwriter.Banditism_var +=1
#			a +=1
#			Modi -=1

func animate_value_health(start, end):
	$Tween.interpolate_property($Control2/NinePatchRect/IndicatorBox/HBoxContainer/HealthProgress, "value", start, end, scale_speed*7, Tween.TRANS_ELASTIC, Tween.EASE_OUT)
	$Tween.start()
	$Control2/NinePatchRect/IndicatorBox/HBoxContainer/HealthProgress/HealthTimer.wait_time = scale_speed
	$Control2/NinePatchRect/IndicatorBox/HBoxContainer/HealthProgress/HealthTimer.start()
	
func _on_HealthTimer_timeout():
	$AnimPlayerHealth.play("ColorControl")
	$AnimPlayerHealth.seek(HealthProgress.value/100, true)
	$AnimPlayerHealth.stop()




func animate_value_law(start, end):
	$Tween.interpolate_property($Control2/NinePatchRect/IndicatorBox/HBoxContainer/LawProgress, "value", start, end, scale_speed*7, Tween.TRANS_ELASTIC, Tween.EASE_OUT)
	$Tween.start()
	$Control2/NinePatchRect/IndicatorBox/HBoxContainer/LawProgress/LawTimer.wait_time = scale_speed
	$Control2/NinePatchRect/IndicatorBox/HBoxContainer/LawProgress/LawTimer.start()
	
func _on_LawTimer_timeout():
	$AnimPlayerLaw.play("ColorControl")
	$AnimPlayerLaw.seek(LawProgress.value/100, true)
	$AnimPlayerLaw.stop()



func animate_value_banditism(start, end):
	$Tween.interpolate_property($Control2/NinePatchRect/IndicatorBox/HBoxContainer/BanditismProgress, "value", start, end, scale_speed*7, Tween.TRANS_ELASTIC, Tween.EASE_OUT)
	$Tween.start()
	$Control2/NinePatchRect/IndicatorBox/HBoxContainer/BanditismProgress/BanditismTimer.wait_time = scale_speed
	$Control2/NinePatchRect/IndicatorBox/HBoxContainer/BanditismProgress/BanditismTimer.start()
	
func _on_BanditismTimer_timeout():
	$AnimPlayerBanditism.play("ColorControl")
	$AnimPlayerBanditism.seek(BanditismProgress.value/100, true)
	$AnimPlayerBanditism.stop()



func animate_value_luck(start, end):
	$Tween.interpolate_property($Control2/NinePatchRect/IndicatorBox/HBoxContainer/LuckProgress, "value", start, end, scale_speed*7, Tween.TRANS_ELASTIC, Tween.EASE_OUT)
	$Tween.start()
	$Control2/NinePatchRect/IndicatorBox/HBoxContainer/LuckProgress/LuckTimer.wait_time = scale_speed
	$Control2/NinePatchRect/IndicatorBox/HBoxContainer/LuckProgress/LuckTimer.start()
	
func _on_LuckTimer_timeout():
	$AnimPlayerLuck.play("ColorControl")
	$AnimPlayerLuck.seek(LuckProgress.value/100, true)
	$AnimPlayerLuck.stop()



func victory_count_update():
	pass
#	$Control2/NinePatchRect/Victory_count.text = "Количество клиентов:" + str(Scriptwriter.victory_count) + "/" + str(Scriptwriter.count_to_victory)


	

func yellow_indicatos_color_right():
	yellow_indicatos_color_middle()
	$Tween.stop(HealthProgress, "rect_scale")
	$Tween.stop(LawProgress, "rect_scale")
	$Tween.stop(BanditismProgress, "rect_scale")
	$Tween.stop(LuckProgress, "rect_scale")
	if !Scriptwriter.HealthRightChoose == 0:
		$Tween.interpolate_property(HealthProgress, "rect_scale", HealthProgress.rect_scale, scale_max, scale_speed, Tween.TRANS_LINEAR, Tween.EASE_OUT)
		$Tween.start()
		$Tween.interpolate_property(ShineEffectHealth, "scale", ShineEffectHealth.scale, shineScaleMax, scale_speed, Tween.TRANS_LINEAR, Tween.EASE_OUT)
		$Tween.start()

	if !Scriptwriter.LawRightChoose == 0:
		$Tween.interpolate_property(LawProgress, "rect_scale", LawProgress.rect_scale, scale_max, scale_speed, Tween.TRANS_LINEAR, Tween.EASE_OUT)
		$Tween.start()
		$Tween.interpolate_property(ShineEffectLaw, "scale", ShineEffectLaw.scale, shineScaleMax, scale_speed, Tween.TRANS_LINEAR, Tween.EASE_OUT)
		$Tween.start()
		
	if !Scriptwriter.BanditismRightChoose == 0:
		$Tween.interpolate_property(BanditismProgress, "rect_scale", BanditismProgress.rect_scale, scale_max, scale_speed, Tween.TRANS_LINEAR, Tween.EASE_OUT)
		$Tween.start()
		$Tween.interpolate_property(ShineEffectBanditism, "scale", ShineEffectBanditism.scale, shineScaleMax, scale_speed, Tween.TRANS_LINEAR, Tween.EASE_OUT)
		$Tween.start()
	if !Scriptwriter.LuckRightChoose == 0:
		$Tween.interpolate_property(LuckProgress, "rect_scale", LuckProgress.rect_scale, scale_max, scale_speed, Tween.TRANS_LINEAR, Tween.EASE_OUT)
		$Tween.start()
		$Tween.interpolate_property(ShineEffectLuck, "scale", ShineEffectLuck.scale, shineScaleMax, scale_speed, Tween.TRANS_LINEAR, Tween.EASE_OUT)
		$Tween.start()



func yellow_indicatos_color_left():
	yellow_indicatos_color_middle()
	$Tween.stop(HealthProgress, "rect_scale")
	$Tween.stop(LawProgress, "rect_scale")
	$Tween.stop(BanditismProgress, "rect_scale")
	$Tween.stop(LuckProgress, "rect_scale")
	if !Scriptwriter.HealthLeftChoose == 0:
		$Tween.interpolate_property(HealthProgress, "rect_scale", HealthProgress.rect_scale, scale_max, scale_speed, Tween.TRANS_LINEAR, Tween.EASE_OUT)
		$Tween.start()
		$Tween.interpolate_property(ShineEffectHealth, "scale", ShineEffectHealth.scale, shineScaleMax, scale_speed, Tween.TRANS_LINEAR, Tween.EASE_OUT)
		$Tween.start()
	if !Scriptwriter.LawLeftChoose == 0:
		$Tween.interpolate_property(LawProgress, "rect_scale", LawProgress.rect_scale, scale_max, scale_speed, Tween.TRANS_LINEAR, Tween.EASE_OUT)
		$Tween.start()
		$Tween.interpolate_property(ShineEffectLaw, "scale", ShineEffectLaw.scale, shineScaleMax, scale_speed, Tween.TRANS_LINEAR, Tween.EASE_OUT)
		$Tween.start()
	if !Scriptwriter.BanditismLeftChoose == 0:
		$Tween.interpolate_property(BanditismProgress, "rect_scale", BanditismProgress.rect_scale, scale_max, scale_speed, Tween.TRANS_LINEAR, Tween.EASE_OUT)
		$Tween.start()
		$Tween.interpolate_property(ShineEffectBanditism, "scale", ShineEffectBanditism.scale, shineScaleMax, scale_speed, Tween.TRANS_LINEAR, Tween.EASE_OUT)
		$Tween.start()
	if !Scriptwriter.LuckLeftChoose == 0:
		$Tween.interpolate_property(LuckProgress, "rect_scale", LuckProgress.rect_scale, scale_max, scale_speed, Tween.TRANS_LINEAR, Tween.EASE_OUT)
		$Tween.start()
		$Tween.interpolate_property(ShineEffectLuck, "scale", ShineEffectLuck.scale, shineScaleMax, scale_speed, Tween.TRANS_LINEAR, Tween.EASE_OUT)
		$Tween.start()



func yellow_indicatos_color_middle():
	$Tween.stop(HealthProgress, "rect_scale")
	$Tween.stop(LawProgress, "rect_scale")
	$Tween.stop(BanditismProgress, "rect_scale")
	$Tween.stop(LuckProgress, "rect_scale")
	if !HealthProgress.rect_scale == scale_norm:
		$Tween.interpolate_property(HealthProgress, "rect_scale", HealthProgress.rect_scale, scale_norm, scale_speed, Tween.TRANS_LINEAR, Tween.EASE_OUT)
		$Tween.start()
		$Tween.interpolate_property(HealthProgress, "self_modulate", HealthProgress.self_modulate, Color("ffffff"), scale_speed, Tween.TRANS_LINEAR, Tween.EASE_OUT)
		$Tween.start()
		$Tween.interpolate_property(ShineEffectHealth, "scale", ShineEffectHealth.scale, shineScaleNorm, scale_speed, Tween.TRANS_LINEAR, Tween.EASE_OUT)
		$Tween.start()
	if !LawProgress.rect_scale == scale_norm:
		$Tween.interpolate_property(LawProgress, "rect_scale", LawProgress.rect_scale, scale_norm, scale_speed, Tween.TRANS_LINEAR, Tween.EASE_OUT)
		$Tween.start()
		$Tween.interpolate_property(LawProgress, "self_modulate", LawProgress.self_modulate, Color("ffffff"), scale_speed, Tween.TRANS_LINEAR, Tween.EASE_OUT)
		$Tween.start()
		$Tween.interpolate_property(ShineEffectLaw, "scale", ShineEffectLaw.scale, shineScaleNorm, scale_speed, Tween.TRANS_LINEAR, Tween.EASE_OUT)
		$Tween.start()
	if !BanditismProgress.rect_scale == scale_norm:
		$Tween.interpolate_property(BanditismProgress, "rect_scale", BanditismProgress.rect_scale, scale_norm, scale_speed, Tween.TRANS_LINEAR, Tween.EASE_OUT)
		$Tween.start()
		$Tween.interpolate_property(BanditismProgress, "self_modulate", BanditismProgress.self_modulate, Color("ffffff"), scale_speed, Tween.TRANS_LINEAR, Tween.EASE_OUT)
		$Tween.start()
		$Tween.interpolate_property(ShineEffectBanditism, "scale", ShineEffectBanditism.scale, shineScaleNorm, scale_speed, Tween.TRANS_LINEAR, Tween.EASE_OUT)
		$Tween.start()
	if !LuckProgress.rect_scale == scale_norm:
		$Tween.interpolate_property(LuckProgress, "rect_scale", LuckProgress.rect_scale, scale_norm, scale_speed, Tween.TRANS_LINEAR, Tween.EASE_OUT)
		$Tween.start()
		$Tween.interpolate_property(LuckProgress, "self_modulate", LuckProgress.self_modulate, Color("ffffff"), scale_speed, Tween.TRANS_LINEAR, Tween.EASE_OUT)
		$Tween.start()
		$Tween.interpolate_property(ShineEffectLuck, "scale", ShineEffectLuck.scale, shineScaleNorm, scale_speed, Tween.TRANS_LINEAR, Tween.EASE_OUT)
		$Tween.start()

#ШМАТОК КОДА ДЛЯ ИЗМЕНЕНИЯ БАЛАНСА ПО СТАТУСУ

func StatusFixingVariablesSlotOne():
	IventSlot1 = Scriptwriter.StatusInfo[2]
	IventSlot1Speed = Scriptwriter.StatusInfo[4]
	IventUpSlot1 = Scriptwriter.StatusInfo[5]
	
func StatusFixingVariablesSlotTwo():
	IventSlot2 = Scriptwriter.StatusInfo[2]
	IventSlot2Speed = Scriptwriter.StatusInfo[4]
	IventUpSlot2 = Scriptwriter.StatusInfo[5]
	
func StatusFixingVariablesSlotThree():
	IventSlot3 = Scriptwriter.StatusInfo[2]
	IventSlot3Speed = Scriptwriter.StatusInfo[4]
	IventUpSlot3 = Scriptwriter.StatusInfo[5]
	
func StatusFixingVariablesSlotFour():
	IventSlot4 = Scriptwriter.StatusInfo[2]
	IventSlot4Speed = Scriptwriter.StatusInfo[4]
	IventUpSlot4 = Scriptwriter.StatusInfo[5]
	
	
func _on_EverySecChanger1_timeout():
	if IventUpSlot1 == "Up":
		if IventSlot1 == "Scriptwriter.Heath_var":
			Scriptwriter.Heath_var = Scriptwriter.Heath_var + IventSlot1Speed
			animate_value_health(HealthProgress.value, Scriptwriter.Heath_var)
		elif IventSlot1 == "Scriptwriter.Law_var":
			Scriptwriter.Law_var = Scriptwriter.Law_var + IventSlot1Speed
			animate_value_law(LawProgress.value, Scriptwriter.Law_var)
		elif IventSlot1 == "Scriptwriter.Banditism_var":
			Scriptwriter.Banditism_var = Scriptwriter.Banditism_var + IventSlot1Speed
			animate_value_banditism(BanditismProgress.value, Scriptwriter.Banditism_var)
		elif IventSlot1 == "Scriptwriter.Luck_var":
			Scriptwriter.Luck_var = Scriptwriter.Luck_var + IventSlot1Speed
			animate_value_luck(LuckProgress.value, Scriptwriter.Luck_var)
			
	elif IventUpSlot1 == "Down":
		if IventSlot1 == "Scriptwriter.Heath_var":
			Scriptwriter.Heath_var = Scriptwriter.Heath_var - IventSlot1Speed
			animate_value_health(HealthProgress.value, Scriptwriter.Heath_var)
		elif IventSlot1 == "Scriptwriter.Law_var":
			Scriptwriter.Law_var = Scriptwriter.Law_var - IventSlot1Speed
			animate_value_law(LawProgress.value, Scriptwriter.Law_var)
		elif IventSlot1 == "Scriptwriter.Banditism_var":
			Scriptwriter.Banditism_var = Scriptwriter.Banditism_var - IventSlot1Speed
			animate_value_banditism(BanditismProgress.value, Scriptwriter.Banditism_var)
		elif IventSlot1 == "Scriptwriter.Luck_var":
			Scriptwriter.Luck_var = Scriptwriter.Luck_var - IventSlot1Speed
			animate_value_luck(LuckProgress.value, Scriptwriter.Luck_var)


func _on_EverySecChanger2_timeout():
	if IventUpSlot2 == "Up":
		if IventSlot2 == "Scriptwriter.Heath_var":
			Scriptwriter.Heath_var = Scriptwriter.Heath_var + IventSlot2Speed
			animate_value_health(HealthProgress.value, Scriptwriter.Heath_var)
		elif IventSlot2 == "Scriptwriter.Law_var":
			Scriptwriter.Law_var = Scriptwriter.Law_var + IventSlot2Speed
			animate_value_law(LawProgress.value, Scriptwriter.Law_var)
		elif IventSlot2 == "Scriptwriter.Banditism_var":
			Scriptwriter.Banditism_var = Scriptwriter.Banditism_var + IventSlot2Speed
			animate_value_banditism(BanditismProgress.value, Scriptwriter.Banditism_var)
		elif IventSlot2 == "Scriptwriter.Luck_var":
			Scriptwriter.Luck_var = Scriptwriter.Luck_var + IventSlot2Speed
			animate_value_luck(LuckProgress.value, Scriptwriter.Luck_var)
			
	elif IventUpSlot2 == "Down":
		if IventSlot2 == "Scriptwriter.Heath_var":
			Scriptwriter.Heath_var = Scriptwriter.Heath_var - IventSlot2Speed
			animate_value_health(HealthProgress.value, Scriptwriter.Heath_var)
		elif IventSlot2 == "Scriptwriter.Law_var":
			Scriptwriter.Law_var = Scriptwriter.Law_var - IventSlot2Speed
			animate_value_law(LawProgress.value, Scriptwriter.Law_var)
		elif IventSlot2 == "Scriptwriter.Banditism_var":
			Scriptwriter.Banditism_var = Scriptwriter.Banditism_var - IventSlot2Speed
			animate_value_banditism(BanditismProgress.value, Scriptwriter.Banditism_var)
		elif IventSlot2 == "Scriptwriter.Luck_var":
			Scriptwriter.Luck_var = Scriptwriter.Luck_var - IventSlot2Speed
			animate_value_luck(LuckProgress.value, Scriptwriter.Luck_var)


func _on_EverySecChanger3_timeout():
	if IventUpSlot3 == "Up":
		if IventSlot3 == "Scriptwriter.Heath_var":
			Scriptwriter.Heath_var = Scriptwriter.Heath_var + IventSlot3Speed
			animate_value_health(HealthProgress.value, Scriptwriter.Heath_var)
		elif IventSlot3 == "Scriptwriter.Law_var":
			Scriptwriter.Law_var = Scriptwriter.Law_var + IventSlot3Speed
			animate_value_law(LawProgress.value, Scriptwriter.Law_var)
		elif IventSlot3 == "Scriptwriter.Banditism_var":
			Scriptwriter.Banditism_var = Scriptwriter.Banditism_var + IventSlot3Speed
			animate_value_banditism(BanditismProgress.value, Scriptwriter.Banditism_var)
		elif IventSlot3 == "Scriptwriter.Luck_var":
			Scriptwriter.Luck_var = Scriptwriter.Luck_var + IventSlot3Speed
			animate_value_luck(LuckProgress.value, Scriptwriter.Luck_var)
			
	elif IventUpSlot3 == "Down":
		if IventSlot3 == "Scriptwriter.Heath_var":
			Scriptwriter.Heath_var = Scriptwriter.Heath_var - IventSlot3Speed
			animate_value_health(HealthProgress.value, Scriptwriter.Heath_var)
		elif IventSlot3 == "Scriptwriter.Law_var":
			Scriptwriter.Law_var = Scriptwriter.Law_var - IventSlot3Speed
			animate_value_law(LawProgress.value, Scriptwriter.Law_var)
		elif IventSlot3 == "Scriptwriter.Banditism_var":
			Scriptwriter.Banditism_var = Scriptwriter.Banditism_var - IventSlot3Speed
			animate_value_banditism(BanditismProgress.value, Scriptwriter.Banditism_var)
		elif IventSlot3 == "Scriptwriter.Luck_var":
			Scriptwriter.Luck_var = Scriptwriter.Luck_var - IventSlot3Speed
			animate_value_luck(LuckProgress.value, Scriptwriter.Luck_var)


func _on_EverySecChanger4_timeout():
	if IventUpSlot4 == "Up":
		if IventSlot4 == "Scriptwriter.Heath_var":
			Scriptwriter.Heath_var = Scriptwriter.Heath_var + IventSlot4Speed
			animate_value_health(HealthProgress.value, Scriptwriter.Heath_var)
		elif IventSlot4 == "Scriptwriter.Law_var":
			Scriptwriter.Law_var = Scriptwriter.Law_var + IventSlot4Speed
			animate_value_law(LawProgress.value, Scriptwriter.Law_var)
		elif IventSlot4 == "Scriptwriter.Banditism_var":
			Scriptwriter.Banditism_var = Scriptwriter.Banditism_var + IventSlot4Speed
			animate_value_banditism(BanditismProgress.value, Scriptwriter.Banditism_var)
		elif IventSlot4 == "Scriptwriter.Luck_var":
			Scriptwriter.Luck_var = Scriptwriter.Luck_var + IventSlot4Speed
			animate_value_luck(LuckProgress.value, Scriptwriter.Luck_var)
			
	elif IventUpSlot4 == "Down":
		if IventSlot4 == "Scriptwriter.Heath_var":
			Scriptwriter.Heath_var = Scriptwriter.Heath_var - IventSlot4Speed
			animate_value_health(HealthProgress.value, Scriptwriter.Heath_var)
		elif IventSlot4 == "Scriptwriter.Law_var":
			Scriptwriter.Law_var = Scriptwriter.Law_var - IventSlot4Speed
			animate_value_law(LawProgress.value, Scriptwriter.Law_var)
		elif IventSlot4 == "Scriptwriter.Banditism_var":
			Scriptwriter.Banditism_var = Scriptwriter.Banditism_var - IventSlot4Speed
			animate_value_banditism(BanditismProgress.value, Scriptwriter.Banditism_var)
		elif IventSlot4 == "Scriptwriter.Luck_var":
			Scriptwriter.Luck_var = Scriptwriter.Luck_var - IventSlot4Speed
			animate_value_luck(LuckProgress.value, Scriptwriter.Luck_var)

