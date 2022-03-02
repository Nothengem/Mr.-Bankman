extends Control

var howMuchCards
var percentOfFalseNames = 0
var randomNumber = 0
var portraitchoose
var namechoose
var sernamechoose

func _ready():
	howMuchCards = Scriptwriter.level_cards.size()
	percentOfFalseNames = round(howMuchCards * 0.24)
	print(percentOfFalseNames)
	#задаем вероятность изменения имени или фото клиента 2.5% от общего числа карт
	if Scriptwriter.CurrentLevel in ["LVL4"]:
		$Passport/MainHBox/PortraitVBox/HBoxContainer.visible = false
		$Passport/MainHBox/ParametresHBox/StrokeOne.visible = false
		$Passport/MainHBox/ParametresHBox/StrokeTwo.visible = false
		$Passport/MainHBox/ParametresHBox/StrokeThree.visible = false
		$Passport/MainHBox/ParametresHBox/StrokeFour.visible = false
	
	
	
func roulette(rangeMax):
	var rng = RandomNumberGenerator.new()
	rng.randomize()
	randomNumber = round(int(rng.randf_range(0, rangeMax)))
	return randomNumber
	#выдаем рандомное число
	
	
func random_portrait_generation():
	var number = roulette(24)
	portraitchoose = Scriptwriter.CharacterPortraitDataBase.DATA.keys()
	Scriptwriter.falsePortrait = portraitchoose[number]
	portraitchoose = Scriptwriter.CharacterPortraitDataBase.DATA.get(portraitchoose[number])
	
	
func random_name_generation():
	namechoose = Scriptwriter.RandomNames.size()
	namechoose = Scriptwriter.RandomNames[roulette(namechoose)]
	sernamechoose = Scriptwriter.RandomSernames.size()
	sernamechoose = Scriptwriter.RandomSernames[roulette(sernamechoose)]
	namechoose = namechoose + sernamechoose
	return namechoose
	
	
func dossier_update():
	$Passport/MainHBox/ParametresHBox/StrokeZero/Name.text = Scriptwriter.dossierName
	$Passport/MainHBox/ParametresHBox/StrokeOne/Sex/Parameter.text = Scriptwriter.dossierSex
	$Passport/MainHBox/ParametresHBox/StrokeOne/Age/Parameter.text = str(Scriptwriter.dossierAge)
	$Passport/MainHBox/PortraitVBox/HBoxContainer/Flag.texture = load("res://Resources/GFX/Dossier/Flag/" + Scriptwriter.dossierNational + ".png") 
	$Passport/MainHBox/ParametresHBox/StrokeThree/Parameter.text = Scriptwriter.dossierCreditHistory
	$Passport/MainHBox/ParametresHBox/StrokeTwo/BlackList/Parameter.text = Scriptwriter.dossierBlackList
	$Passport/MainHBox/ParametresHBox/StrokeFour/LoanRating/Parameter.text= Scriptwriter.dossierCreditRaiting
	
	
	if !(Scriptwriter.CardChoose[-1] in ["1", "2", "3", "4", "5", "6", "7"]):
		Scriptwriter.permissionToDenide = true
		get_tree().call_group("BalanceGUI", "denide_photo_and_name_correction")
		
		
		if Scriptwriter.PhotoRule == true and Scriptwriter.CardType != "Tutorial":
			randomNumber = roulette(howMuchCards)
			if randomNumber <= percentOfFalseNames:
				random_portrait_generation()
				Scriptwriter.CharacterPortrait = portraitchoose
				get_tree().call_group("DossierPhoto", "changePhotoToFalse")
					
		if Scriptwriter.NameRule == true and Scriptwriter.CardType != "Tutorial":
			randomNumber = roulette(howMuchCards)
			if randomNumber <= percentOfFalseNames:
				Scriptwriter.dossierName = random_name_generation()
				$Passport/MainHBox/ParametresHBox/StrokeZero/Name.text = str(Scriptwriter.dossierName)
				
		
