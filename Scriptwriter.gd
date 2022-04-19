extends Node

#переменные для формирования карты
var CardType #nbg выбранной карточки
var CardChoose #какую карточку мы выбрали?
var CardInfo #переменная хранящая данные из выбранной карты
var NextCardInfo #переменная для обращения к следующей карте из массива
var CardImage #переменная хранящая путь до картинки следующей карты при ответе "Да"
var NextCardImageLeft #переменная хранящая путь до картинки следующей карты при ответе "Нет"
var CardName #переменная хранящая название карты
var CardText #переменная хранщая текст карты
var CardRAnswer #переменная для правого ответа
var CardLAnswer #переменная для левого ответа
var CardIvent #переменная для активации события после карточки
var WhatFor #содержит ответ на вопрос "зачем клиенту этот продукты"
var CharacterTechicalName

#переменные для формирования потрета карты
export var CharacterPortrait = [] #переменная хранящая название массива портрета в БД персонажей
var CharacterEars
var CharacterEyebrows
var CharacterEyes
var CharacterForehead
var CharacterGlasses
var CharacterHair
var CharacterHead
var CharacterJowls
var CharacterMouth
var CharacterNeck
var CharacterNose
var CharacterShirt

#переменные для формирования ивента
var IventInfo #хранение данных ивента
var StatusInfo #хранение данных статуса
var IventName
var IventDifficulty
var IventLoseText
var IventLoseTeam
var IventLoseClient
var IventLoseCentralBank
var IventLoseMoney
var IventWinText
var IventVarCorrection
var IventCorrectorModificator

#переменные выбора на карточке влияющие на баланс
var HealthLeftChoose
var LawLeftChoose
var BanditismLeftChoose
var LuckLeftChoose
var HealthRightChoose
var LawRightChoose
var BanditismRightChoose
var LuckRightChoose

#Какие карты будут следующими?
var NextCardRight
var NextCardLeft

#переменные баланса
var Heath_var
var Law_var
var Banditism_var
var Luck_var
var maximum_value = 100

#переменная обслуженных клиентов и лимит для достижения победы
var victory_count
var count_to_victory

#переменная для запуска первой карты
var FirstCard = true

# Сохранённая игра
var levels_complete = 1
#переменная обозначающая текущий уровень
var  CurrentLevel = 0

#массив содержащий в себе карты для уровня
var level_cards = []
var level_tutorial = []

#позиция в массиве уровня, на которой мы сейчас находимся
var position_on_level = 0

#для отслеживания уровня, который выбрал игрок
var level_was_choosen = 0

#предзагрузка БД карт
onready var CardDataBase = preload ("res://DataBase/CardDataBase.gd")
#предзагрузка БД ивентов
onready var IventDataBase = preload ("res://DataBase/IventDataBase.gd")
#предзагрузка БД настроек портретов персонажей
onready var CharacterPortraitDataBase = preload("res://DataBase/CharacterPortraitDataBase.gd")
#предзагрузка БД всех частей портетов персонажей
onready var PortraitPardDataBase = preload("res://DataBase/PortraitPartDataBase.gd")
#предзагрузка БД всех мини-карточек
onready var MiniCardDataBase = preload("res://DataBase/MiniCardDataBase.gd")
#предзагрузка БД всех статусов
onready var StatusDataBase = preload("res://DataBase/StatusDataBase.gd")
#предзагрузка БД всех уровней
onready var LevelDataBase = preload("res://DataBase/LevelDataBase.gd")
#предзагрузка БД количества карт для победы на каждом уровне
onready var CountCardsLevelDataBase = preload("res://DataBase/CountCardsLevelDataBase.gd")
#предзагрузка БД для формирования досье 
onready var DossierCharacterDataBase = preload("res://DataBase/DossierDataBase.gd")
#предзагрузка БД для формирования рандомных имен
onready var RandomNamesSernames = preload("res://DataBase/NameDataBase.gd")

# переменные для формирования досье
onready var DossierInfo
onready var dossierName
onready var dossierSex
onready var dossierAge
onready var dossierNational
onready var dossierCreditHistory
onready var dossierBlackList
onready var dossierCreditRaiting
# массивы для формирования досье
onready var dossierSexDiction = ["Мужской", "Женский"]
onready var dossierNationalDiction = ["Russia", "France", "Germany", "England", "Italy", "Spain", "USA", "China", "Japan", "UAE", "Africa", "India"]
onready var dossierCreditHistoryDiction = ["Хорошая", "Плохая"]
onready var dossierBlackListDiction = ["Чист", "Террорист", "Черный список"]
onready var dossierCreditRatingDiction = ["Высокий", "Средний", "Низкий"]
onready var dossierBankRlationPurpose = ["...", "До зарплаты", "Обучение", "На бизнес", "Шоппинг", "Отпуск", "Вернуть долги", "Лечение", "Дом", "Ремонт", "Автомобиль", "Хобби", "Сохранить деньги", "Инвестиции", "Не скажу", "Жалоба"]

#переменные для правил уровня
onready var RulesDataBase = preload("res://DataBase/RulesDataBase.gd")
onready var ruleAgeMin
onready var ruleAgeMax
onready var ruleSex
onready var ruleNational
onready var ruleCreditHistory
onready var ruleBlackList
onready var ruleLoanRating
onready var ruleOfLevel
onready var ruleWhatFor

#переменная в которой буду хранить позицию центра карточки
onready var MainCardsBack


#переменные активации правил
var NameRule
var AgeRule
var SexRule
var CountryRule
var HistoryRule
var BlackListRule
var RatingRule
var PhotoRule
var WhatForRule

#переменные хранящие рандомные имена и фамилии
onready var RandomNames = RandomNamesSernames.names
onready var RandomSernames = RandomNamesSernames.sernames

#техническая переменная для сохранения имени лживого портрета для сравнения с настоящим
var falsePortrait

var feedBackMessage

var permissionToDenide = false

#Словарь хранящий все картинки персонажей
var characterPortraitArtBase = { 
	"Head": [1, 2, 3],
	"Neck": [],
	"Shirt": [],
	"Eyebrows": [],
	"Eyes": [],
	"Forehead": [],
	"Ears": [],
	"Jowls": [],
	"Glasses": [],
	"Mouth": [],
	"Hair": [],
	"Nose": []
}


func _ready():
	NameRule = false
	AgeRule = false
	SexRule = false
	CountryRule = false
	HistoryRule = false
	BlackListRule = false
	RatingRule = false
	PhotoRule = false
	WhatForRule = false
	NameRule = false
	PhotoRule = false
	
	victory_count = 0
	position_on_level = 0
	
	characterPortraitArtBase.Head[0] = load( str ("res://Resources/GFX/CharacterCotaint/Head/Head1.png"))
	print(characterPortraitArtBase.Head[0])
	
#	if CurrentLevel >= 3:
#		NameRule = true
#		PhotoRule = true

func artsLoader(folder):
	var wayToPicture = "res://Resources/GFX/CharacterCotaint/"
	var variableLoader = ""
	wayToPicture = wayToPicture + folder
	while variableLoader != null:
		pass
	
	

func level_massive_generator():
	position_on_level = 0
	LevelDataBase = load("res://DataBase/LevelDataBase.gd")
	victory_count = 0
	level_cards = LevelDataBase.DATA.get(CurrentLevel)
	level_tutorial = LevelDataBase.TUTORIAL.get(CurrentLevel)
	randomize()
	level_cards.shuffle()
	level_cards = level_tutorial + level_cards
	CardImage = level_cards[victory_count]
	LevelDataBase = load("res://DataBase/LevelDataBase.gd")
	count_to_victory = level_cards.size()
	ruleOfLevel = RulesDataBase.DATA.get(CurrentLevel)
	ruleAgeMin = ruleOfLevel[1]
	ruleAgeMax = ruleOfLevel[2]
	ruleSex = ruleOfLevel[0]
	ruleNational = ruleOfLevel[3]
	ruleCreditHistory = ruleOfLevel[4]
	ruleBlackList = ruleOfLevel[5]
	ruleLoanRating = ruleOfLevel[6]
	ruleWhatFor = ruleOfLevel[7]
	level_massive_rule_generetor()
	
func level_massive_rule_generetor():
	ruleLoanRating = ruleOfLevel[6]
	

	if ruleAgeMin != 0 or ruleAgeMax != 0:
		AgeRule = true
	if ruleSex != "false":
		SexRule = true
	if ruleNational != false:
		CountryRule = true
	if ruleCreditHistory != false:
		HistoryRule = true
	if ruleBlackList != false:
		BlackListRule = true
	if ruleLoanRating != false:
		RatingRule = true
	if !("false" in ruleWhatFor):
		WhatForRule = true
	
	

#	var level_composit
#	for i in range(20, 25):
#		randomize()
#		level_composit = "Random" + str(i)
#		level_cards.append(level_composit)
#	level_cards = ["Random23", "Random15", "Random24", "Random25", "Random26", "Random27", "Random23", "Random22", "Random21", "Random20", "Random21"]
#	CardImage = level_cards[1]



func losecard():
	if Scriptwriter.Heath_var <= 0:
		CardChoose = "LooseBottomHealth"
		card_var_generator()
	elif Scriptwriter.Law_var <= 0:
		CardChoose = "LooseBottomLaw"
		card_var_generator()
	elif Scriptwriter.Banditism_var <= 0:
		CardChoose = "LooseBottomBanditism"
		card_var_generator()
	elif Scriptwriter.Luck_var <= 0:
		CardChoose = "LooseBottomLuck"
		card_var_generator()
	elif Scriptwriter.Heath_var >= 100:
		CardChoose = "LooseTopHealth"
		card_var_generator()
	elif Scriptwriter.Law_var >= 100:
		CardChoose = "LooseTopLaw"
		card_var_generator()
	elif Scriptwriter.Banditism_var >= 100:
		CardChoose = "LooseTopBanditism"
		card_var_generator()
	elif Scriptwriter.Luck_var >= 100:
		CardChoose = "LooseTopLuck"
		card_var_generator()



func card_var_generator(): #ПОХОЖЕ Я ЭТУ ШТУКУ ЗАПУСКАЮ 2 РАЗА ПРИ ЛУЗ СКРИНЕ (ПРОВЕРИТЬ)
	#кусок в котором присваиваем портрет карты
	if CardChoose == "LooseScreen": #проверяем что следующая карта проигрышная или нет
		losecard()
	elif CardChoose == "StatusScreen":
		CardChoose = CardInfo[16]
		CardInfo = CardDataBase.DATA.get(CardChoose)
	elif CardChoose == "Random" or CardChoose == "Tutorial":
		if victory_count != count_to_victory:
			CardChoose = str(level_cards[victory_count])
			CardInfo = CardDataBase.DATA.get(CardChoose)
			CharacterPortrait = CharacterPortraitDataBase.DATA.get(CardInfo[1])
		elif victory_count == count_to_victory:
			get_tree().call_group("MainScene", "win_the_level")
	elif CardChoose == "Ivent" or CardChoose == "EventResult": #если выбранная карта ивент, то следующая карта ивент
		CardInfo = CardDataBase.DATA.get(CardChoose) #присваиваем кардинфо переменную ивента
		CharacterPortrait = CharacterPortraitDataBase.DATA.get(CardInfo[1]) #потрет при этом равен ivent (всё на нуль)
	elif CardChoose == "StatusScreen": #если следующая карточка статус
		CardInfo = CardDataBase.DATA.get("Ivent")
		CharacterPortrait = CharacterPortraitDataBase.DATA.get(CardInfo[1])
	elif !CardChoose == "Ivent" or "LooseScreen" or "Random" or "Tutorial" or "StatusScreen":
		CardInfo = CardDataBase.DATA.get(CardChoose)
		CharacterPortrait = CharacterPortraitDataBase.DATA.get(CardInfo[1])
	DossierInfo = DossierCharacterDataBase.DATA.get(CardInfo[1])

	
	CardType = CardInfo[0]
	if CardType == "LooseScreen":
		CardImage = str ("res://Resources/GFX/CharacterPortraits", "/", CardInfo[1], ".png")
		CharacterPortrait = CardImage
	elif CardType == "StatusScreen" or CardChoose == "EventResult":
		CardImage = str ("res://Resources/GFX/StatusCards", "/", CardInfo[1], ".png")
		CharacterPortrait = CardImage
	elif CardType == "Characters" or CardType == "Tutorial":
		portrait_variables_update()
		
	CardName = CardInfo[3] #Ввели в переменную текстовое значение имени персонажа из массива БД
	CardText = CardInfo[2] #Ввели в переменную текстовое значение текста карты из массива БД
	CardRAnswer = CardInfo[5] #левый ответ из БД
	CardLAnswer = CardInfo[4] #Правый ответ из БД
	HealthLeftChoose = CardInfo[6]
	LawLeftChoose = CardInfo[7]
	BanditismLeftChoose = CardInfo[8]
	LuckLeftChoose = CardInfo[9]
	HealthRightChoose = CardInfo[10]
	LawRightChoose = CardInfo[11]
	BanditismRightChoose = CardInfo[12]
	LuckRightChoose = CardInfo[13]
	NextCardRight = CardInfo[15]
	NextCardLeft = CardInfo[14]
	CardIvent = CardInfo[16]
	WhatFor = CardInfo[17]
	CharacterTechicalName = CardInfo[1]
	
	if CardType == "Characters" or CardType == "Tutorial":
		dossierName = DossierInfo[0] #DossierInfo[0] потом доделать
		dossierSex = dossierSexDiction[DossierInfo[1]]
		dossierAge = DossierInfo[2]
		dossierNational = dossierNationalDiction[DossierInfo[3]]
		dossierCreditHistory = dossierCreditHistoryDiction[DossierInfo[4]]
		dossierBlackList = dossierBlackListDiction[DossierInfo[5]]
		dossierCreditRaiting = dossierCreditRatingDiction[DossierInfo[6]]
	
	
	if NextCardRight == "Ivent":
		ivent_generatior()
	elif CardType == "StatusScreen":
		status_generator()
	
	get_tree().call_group("CharacterControl", "card_generation") #на проверке
	get_tree().call_group("IventCard", "cardupdate")
#	get_tree().call_group("Dossier", "dossier_update")
	get_tree().call_group("NeedTo", "answer_update")



func portrait_variables_update():
	CharacterHead = str ("res://Resources/GFX/CharacterCotaint/Head", "/", CharacterPortrait[0], ".png")
	CharacterNeck = str ("res://Resources/GFX/CharacterCotaint/Neck", "/", CharacterPortrait[1], ".png")
	CharacterShirt =  str ("res://Resources/GFX/CharacterCotaint/Shirt", "/", CharacterPortrait[2], ".png")
	CharacterEyebrows = str ("res://Resources/GFX/CharacterCotaint/Eyebrows", "/", CharacterPortrait[3], ".png")
	CharacterEyes = str ("res://Resources/GFX/CharacterCotaint/Eyes", "/", CharacterPortrait[4], ".png")
	CharacterForehead = str ("res://Resources/GFX/CharacterCotaint/Forehead", "/", CharacterPortrait[5], ".png")
	CharacterEars = str ("res://Resources/GFX/CharacterCotaint/Ears", "/", CharacterPortrait[6], ".png")
	CharacterJowls = str ("res://Resources/GFX/CharacterCotaint/Jowls", "/", CharacterPortrait[7], ".png")
	CharacterGlasses = str ("res://Resources/GFX/CharacterCotaint/Glasses", "/", CharacterPortrait[8], ".png")
	CharacterMouth = str ("res://Resources/GFX/CharacterCotaint/Mouth", "/", CharacterPortrait[9], ".png")
	CharacterHair = str ("res://Resources/GFX/CharacterCotaint/Hair", "/", CharacterPortrait[10], ".png")
	CharacterNose = str ("res://Resources/GFX/CharacterCotaint/Nose", "/", CharacterPortrait[11], ".png")

func ivent_generatior():
	IventInfo = IventDataBase.DATA[IventDataBase.get(CardIvent)]



func status_generator():
	StatusInfo = StatusDataBase.DATA[StatusDataBase.get(CardIvent)]
	

# cardDelivery variables
var customer = str("res://Resources/GFX/CustomerWhite.svg")
var car = str("res://Resources/GFX/CardDelivery/Car.png")
var hole = str("res://Resources/GFX/Banditism Back.png")
var nothing = null

var CardDeliveryDefault = [customer, car, hole, nothing]
var CardDeliveryNow = []
var CardDeliveryinRunning
var danger_left
var danger_middle
var danger_right

# Dice variables
var dice_to_win
