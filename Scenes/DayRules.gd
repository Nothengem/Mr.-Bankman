extends Control

onready var text_generation = "- Не совпадает фото и имя \n"
onready var sex = str(Scriptwriter.ruleOfLevel[0])
onready var ageMin = str(Scriptwriter.ruleOfLevel[1])
onready var ageMax = str(Scriptwriter.ruleOfLevel[2])
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
		
	if ageMin == "0":
		Scriptwriter.AgeRule = false
	elif ageMin != "0":
		Scriptwriter.AgeRule = true
		text_generation = str(text_generation) + "- Возраст от " + str(ageMin)
		
	if ageMax != "0":
		Scriptwriter.AgeRule = true
		if ageMax != "0":
			text_generation = str(text_generation) + " до " + str(ageMax) + " \n"
		elif ageMax == "0":
			text_generation = str(text_generation) + "- Возраст до " + str(ageMax) + " \n"
	elif ageMax == "0":
		Scriptwriter.AgeRule = false
			
	if country != false:
		Scriptwriter.CountryRule = true
		country = str(PoolStringArray(country).join(", "))
		text_generation = text_generation + "- Не из стран: " + country + " \n"
	elif country == false:
		Scriptwriter.CountryRule = false
		
	if creditHistory != false:
		Scriptwriter.HistoryRule = true
		text_generation = text_generation + "- Кредитная история: " + creditHistory + " \n"
	elif creditHistory == false:
		Scriptwriter.HistoryRule = false
		
	if blackList != false:
		Scriptwriter.BlackListRule = true
		text_generation = text_generation + "- Числится в списках: " + blackList + " \n"
	elif blackList == false:
		Scriptwriter.BlackListRule = false
		
	if creditRating != false:
		Scriptwriter.RatingRule = true
		creditRating = str(PoolStringArray(creditRating).join(", "))
		text_generation = text_generation + "- Кредитный рейтинг: " + creditRating + " \n"
	elif creditRating == false:
		Scriptwriter.RatingRule = false
		
	if whatFor != false:
		Scriptwriter.WhatForRule = true
		whatFor = str(PoolStringArray(whatFor).join(", "))
		text_generation = text_generation + "- Продукт нужен для: " + whatFor + " \n"
	elif whatFor == false:
		Scriptwriter.WhatForRule = false
		
	$Passport/LoanRating/Description2.text = text_generation
