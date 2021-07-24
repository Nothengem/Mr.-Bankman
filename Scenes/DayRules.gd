extends Control

onready var text_generation = "- Не совпадает фото и имя \n"
onready var sex = str(Scriptwriter.ruleOfLevel[0])
onready var ageMin = Scriptwriter.ruleOfLevel[1]
onready var ageMax = Scriptwriter.ruleOfLevel[2]
onready var country = Scriptwriter.ruleOfLevel[3]
onready var creditHistory = Scriptwriter.ruleOfLevel[4]
onready var blackList = Scriptwriter.ruleOfLevel[5]
onready var creditRating = Scriptwriter.ruleOfLevel[6]
onready var whatFor = Scriptwriter.ruleOfLevel[7]


func _ready():
	pass
	
	
func text_generations():
	if sex in Scriptwriter.dossierSexDiction:
		Scriptwriter.SexRule = true
		text_generation = text_generation + "- Пол: " + sex + "\n"
	elif !(sex in Scriptwriter.dossierSexDiction):
		Scriptwriter.SexRule = false
		
	if ageMin == 0:
		Scriptwriter.AgeRule = false
	elif ageMin != 0:
		Scriptwriter.AgeRule = true
		text_generation = text_generation + "- Возраст от " + ageMin
		
	if ageMax != 0:
		Scriptwriter.AgeRule = true
		if ageMax != 0:
			text_generation = text_generation + " до " + ageMax + " \n"
		elif ageMax == 0:
			text_generation = text_generation + "- Возраст до " + ageMax + " \n"
	elif ageMax == 0:
		Scriptwriter.AgeRule = false
			
	if country != null:
		Scriptwriter.CountryRule = true
		country = str(PoolStringArray(country).join(", "))
		text_generation = text_generation + "- Не из стран: " + country + " \n"
	elif country == null:
		Scriptwriter.CountryRule = false
		
	if creditHistory != null:
		Scriptwriter.HistoryRule = true
		text_generation = text_generation + "- Кредитная история: " + creditHistory + " \n"
	elif creditHistory == null:
		Scriptwriter.HistoryRule = false
		
	if blackList != null:
		Scriptwriter.BlackListRule = true
		text_generation = text_generation + "- Числится в списках: " + blackList + " \n"
	elif blackList == null:
		Scriptwriter.BlackListRule = false
		
	if creditRating != null:
		Scriptwriter.RatingRule = true
		creditRating = str(PoolStringArray(creditRating).join(", "))
		text_generation = text_generation + "- Кредитный рейтинг: " + creditRating + " \n"
	elif creditRating == null:
		Scriptwriter.RatingRule = false
		
	if whatFor != null:
		Scriptwriter.WhatForRule = true
		text_generation = text_generation + "- Продукт нужен для: " + whatFor + " \n"
	elif whatFor == null:
		Scriptwriter.WhatForRule = false
		
	$Passport/LoanRating/Description2.text = text_generation
