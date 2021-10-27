extends Node

enum { 
	Dictor, AlexeyKochanov, AnastasiyaMalkova, AnastasiyaCherevatkina, AlexeySilkin, Bman, CBomjMan,
	DmitriyOvsyannikov, Chechen, BArtem, KristinaStepanova, Babylia, IlonMask, Mafiosi, GrishaGrachev, 
	BitKogan, InvestorJunior, OstapBender, OlegTinkoff, BillGates, Putin, MegaBomj, RomanShabanov, 
	CBreviewer
	}

#onready var dossierSexDiction = [0"Мужской", 1"Женский"]
#onready var dossierNationalDiction = [0"Russia", 1"France", 2"Germany", 3"England", 4"Italy", 
#5"Spain", 6"USA", 7"China", 8"Japan", 9"UAE", 10"Africa", 11"India"]
#onready var dossierCreditHistoryDiction = [0"Хорошая", 1"Плохая"]
#onready var dossierBlackListDiction = [0"Чист", 1"Террорист", 2"Черный список"]
#onready var dossierCreditRatingDiction = [0"Высокий", 1"Средний", 2"Низкий"]


const DATA = {
	#ключ: [имя, пол, возраст, национальность, кредитная история, черный лист, рейтинг]
	"Mr. Bankman": ["Mr. Bankman", 0, 58, 0, 0, 0, 0],
	"Sill Fpencer": ["Стилл Фпенсер", 0, 41, 6, 0, 0, 1],
	"Getty Green": ["Гэтти Грин", 1, 25, 7, 1, 0, 1],
	"Cark Mukerberg": ["Царк Мукерберг", 0, 35, 1, 0, 0, 1],
	"Borren Uaffet": ["Боррен Уаффет", 0, 80, 2, 0, 0, 0],
	"Liktor Vustig": ["Ликтор Вюстиг", 0, 57, 3, 0, 2, 0],
	"Kikolas Nage": ["Киколас Нейдж", 0, 40, 6, 1, 0, 1],
	"Bichard Ranson": ["Бичард Рэнсон", 0, 70, 3, 0, 2, 0],
	"Mjack Da": ["Мжек Да", 0, 40, 7, 0, 0, 2],
	"Chechen": ["Марио (BlackList)", 1, 30, 1, 0, 0, 0],
	"BArtem": ["Артём (B)", 1, 30, 1, 0, 0, 0],
	"KristinaStepanova": ["Кристина", 1, 30, 1, 0, 0, 0],
	"Babylia": ["Бабуля со Стамбула", 1, 30, 1, 0, 0, 0],
	"IlonMask": ["Мишель. Маркетинг", 1, 30, 1, 0, 0, 0],
	"Mafiosi": ["Подозрительный тип", 1, 30, 1, 0, 0, 0],
	"GrishaGrachev": ["Григорий (А+)", 1, 30, 1, 0, 0, 0],
	"BitKogan": ["BitKogan", 1, 30, 1, 0, 0, 0],
	"InvestorJunior": ["InvestorJunior", 1, 30, 1, 0, 0, 0],
	"OstapBender": ["Бендер (BlackList)", 1, 30, 1, 0, 0, 0],
	"OlegTinkoff": ["Олег (A+)", 1, 30, 1, 0, 0, 0],
	"BillGates": ["Билл (A)", 1, 30, 1, 0, 0, 0],
	"Putin": ["Володя (A+++)", 1, 30, 1, 0, 0, 0],
	"MegaBomj": ["МегаБомж (Z---)", 1, 30, 1, 0, 0, 0],
	"RomanShabanov": ["Парень из Эстонии", 1, 30, 1, 0, 0, 0],
	"CBreviewer": ["Ревизор из ЦБ", 1, 30, 1, 0, 0, 0],
}
 
