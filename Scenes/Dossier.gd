extends Control

var howMuchCards
var percentOfFalseNames = 0
var randomNumber = 0
var portraitchoose
var namechoose
var sernamechoose

func _ready():
	howMuchCards = Scriptwriter.level_cards.size()
	percentOfFalseNames = round(howMuchCards * 0.25)
	#задаем вероятность изменения имени или фото клиента 25% от общего числа карт
	
	
	
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
#	$Passport/MainHBox/ParametresHBox/NameAndFlagVBox/Flag.text = Scriptwriter.dossierNational
	$Passport/MainHBox/ParametresHBox/StrokeThree/Parameter.text = Scriptwriter.dossierCreditHistory
	$Passport/MainHBox/ParametresHBox/StrokeTwo/BlackList/Parameter.text = Scriptwriter.dossierBlackList
	$Passport/MainHBox/ParametresHBox/StrokeFour/LoanRating/Parameter.text= Scriptwriter.dossierCreditRaiting
	
	
	if Scriptwriter.PhotoRule == true:
		randomNumber = roulette(howMuchCards)
		if randomNumber <= percentOfFalseNames:
			random_portrait_generation()
			Scriptwriter.CharacterPortrait = portraitchoose
			get_tree().call_group("DossierPhoto", "changePhotoToFalse")
			
	if Scriptwriter.NameRule == true:
		randomNumber = roulette(howMuchCards)
		if randomNumber <= percentOfFalseNames:
			Scriptwriter.dossierName = random_name_generation()
			$Passport/Name/Parameter.text = Scriptwriter.dossierName
