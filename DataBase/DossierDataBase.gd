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
	
	#Руководитель игрока и владелец Банка. Любит только деньги
	"Mr. Bankman": ["Mr. Bankman", 0, 58, 0, 0, 0, 0],
	#Успешный молодой человек, который использует деньги с умом
	"Sill Fpencer": ["Стилл Фпенсер", 0, 41, 6, 0, 0, 1],
	#не очень удачливая и вечно залазиет в долги, но успешно оплачивает их. Может махинации?
	"Getty Green": ["Гэтти Грин", 1, 25, 7, 1, 0, 1],
	#амбициозный юноша, который берёт деньги на своё собственное развитие
	"Cark Mukerberg": ["Царк Мукерберг", 0, 35, 1, 0, 0, 1],
	#не молодой человек, опытнфй инвестор понимающий во что вкладывать деньги. Прибедняется
	"Borren Uaffet": ["Боррен Уаффет", 0, 80, 2, 0, 0, 0],
	#второсортный аферист, который проворачивает махинации со всем краденным и незаконным
	"Liktor Vustig": ["Ликтор Вюстиг", 0, 57, 3, 0, 2, 0],
	#семьянин, вроде не бедный но не умеет управлять финансами
	"Kikolas Nage": ["Киколас Нейдж", 0, 40, 6, 1, 0, 1],
	#самый сумасшедшийперсонаж в игре. Творит самую дичь
	"Bichard Ranson": ["Бичард Рэнсон", 0, 70, 3, 0, 2, 0],
	#китаец, который случайно оказался у нас и не говорит на местном
	"Mjack Da": ["Мжек Да", 0, 40, 7, 0, 0, 2],
	#Толи итальянка толи испанка, наивный, который верит в любую финансовую выгоду. Его легко обмануть
	"El'Fa": ["Эль'Фа", 1, 20, 5, 1, 0, 2],
	#Успешная финансистка, которая старается сделать всё в свою выгоду. Буквально одержима выгодой по максимуму и с риском
	"Dabygale Eonson": ["Дэбигейл Эонсон", 1, 25, 10, 0, 0, 1],
	#всегда на всех жалуется и кричит
	"Crowley Shepard": ["Кроули Шеппард", 0, 40, 3, 1, 2, 2],
	#Красивая и падкая на деньги. Ищет богатого мужа
	"Sanna Acol Nitt": ["Санна Аколь Нитт", 1, 25, 6, 0, 0, 0],
	#сотрудник банка, экономист
	"Darls Choy": ["Дарлс Чоу", 1, 30, 1, 0, 0, 0],
	
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
 
