extends Node

enum {
	#тестовые карты
		Tutorial1, Tutorial2, Tutorial3, Tutorial4,
		
		Random1, Random2, Random2a, Random2b, Random3, Random3a, Random3b, 
		Random3c, Random4, Random4a, Random5, Random5a, Random5b, Random5c, 
		Random6, Random7, Random8, Random9, Random10, Random11, Random12, 
		Random13, Random13a, Random13b, Random14, Random15, Random16, Random17, 
		Random17a, Random18, Random18a, Random19, Random20, Random21, Random21a, 
		Random22, Random22a, Random23, Random24, Random25, Random26, Random27, 
		Random28, Random29, Random30, Random31,
	
	#туториалы
		TutorLev1Card1, TutorLev1Card2, TutorLev1Card3, TutorLev1Card31,
		TutorLev2Card1, TutorLev2Card2, TutorLev2Card3, TutorLev2Card4, TutorLev2Card5, TutorLev2Card6,
		TutorLev3Card1, TutorLev3Card2, TutorLev3Card3, TutorLev3Card4, TutorLev3Card5,
		TutorLev4Card1, TutorLev4Card2, TutorLev4Card3, TutorLev4Card4, TutorLev4Card5,
		TutorLev5Card1, TutorLev5Card2, 
	
	#колода 1 уровня (20 штук)
	#Кредиты
		CreditHomeForCar, Credit700000, Credit7000001, Credit7000002, Credit7000003,
		CreditFlatFix, CreditRefinance, CreditUniversity, CreditUniversity1, 
		CreditUniversity2, 
	#Депозиты
		DepositUniversity, DepositStolenCars, DepositSelledFlat, DepositSelledFlat1, DepositMadRetired, DepositMadRetired1,
		DepositMadRetired2, DepositMadRetired3, DepositRetired, 
	#Кредитные карты
		CardToShopping, CardToAirways, CardToSallary, CardToDebt, CardToChineseWhoWantToLearnLanguage, 
		CardToChineseWhoWantToLearnLanguage1, #последние 2 карты развиваются по сюжету
	#Инвестиции
		InvestitionGreenInvestor, InvestitionGreenInvestor1, InvestitionOldInvestor, InvestitionOpen, 
		InvestitionClose, InvestitionClose1,
	
	#колода 2 уровня (10 штук)
	#кредиты
		CreditHonestly, CreditHonestly1, CreditHonestly2, CreditRobbery, CreditRobbery1,
	#депозиты
		 DepositSaveMoney, DepositSaveMoney1, DepositSaveMoney2,
	#Кредитные карты
		CardSmartBlocking, CardSmartBlocking1, CardAffraidOfPay, CardAffraidOfPay1,
		CreditLiveAt15Oclock,
	#ЖалобыКлиентов
		IncassationCrush, CreditDenyLoterry, MerryTOBankir,
	#Поучения от руководителя
		DepositLoanForAfriend, DepositLoanForAfriend1, DepositLoanForAfriend2,
		
	#колода 3 уровня (10 штук)
	#Депозиты
	DepositPovertyIsNotAVice, 
	#кредит
	CreditReturnCredit, BankRobberyMe, BankRobberyMe1, ForgiveMeCredit, 
	CreditListIpotec, CreditMoneySource, CreditMoneySource1, CreditIfIwontReturn, CreditIfIwontReturn1,
	#инвестиции
	InvestitionBillion, InvestitionCreditToBank, InvestitionCreditToBank1, 
	InvestitionCreditToBank2,
	#Сотрудники 
	StaffEconomicalQuestions, StaffEconomicalQuestions1,
	
	#колода 4 уровня (10 штук)
	#Жалобы
	ComplainsCredit, ComplainsCredit1, ComplainsCredit2, CreditNotInMyWay, CreditNotInMyWay1, CreditNotInMyWay2, ClaimBankTrustYou,
	#Инвестиции
	InvestitionSmallBusiness, InvestitionFlipOver,
	#Кредит
	CreditCleymoIpotek, CreditCleymoIpotek1, CreditRefrigerator, CreditRefrigerator1,
	#новости
	ClaimGrandmother, ClaimGrandmother1, ClaimGrandmother2, ClaimGrandmother3,
	#Депозит
	DepositLetterWrite, DepositLetterWrite1, DepositLetterWrite2,
	
	# колода 5 дня (10 штук)
	#Жалобы
	#Инвестиции
	CreditDeathScheme, CreditDeathScheme1, MoneyPrinting, MoneyPrinting1, 
	MrBankManScarySecret, MrBankManScarySecret1, MrBankManScarySecret2,
	CustomerLastWish, CustomerLastWish1, CreditProphetReturn, CreditProphetReturn1,
	CreditProphetReturn2, ErogenZone, CantMeetMoney, CollectorsGuardians, CollectorsGuardians1,
	CollectorsGuardians2, CollectorsGuardians3, CollectorsGuardians4, 
	DepositArgument, DepositArgument1, DepositArgument2, MrBankManPocket,
	MrBankManPocket1,
	
	
	#концовки
		TeamUp, CustomersUp, CentralBankUp, MoneyUp, 
		TeamDown, CustomersDown, CentralBankDown, MoneyDown,
		TeamDownFullDay,
		
		LooseTopHealth, LooseBottomHealth, LooseTopLaw, 
		LooseBottomLaw, LooseTopBanditism, LooseBottomBanditism, 
		LooseTopLuck, LooseBottomLuck, EventResult
	
	#тестовые карты для концовок
		LoseCBBottom, LoseCBUp, LoseTeamBottom, LoseTeamUp, LoseCutomButton, LoseCustomUp, LoseMoneyBottom, LoseMoneyUp,
	
	}

const DATA = {
	
		"LoseCBBottom" : 
		["Tutorial",
		"Mr. Bankman", 
		"Выбирай", #что говорит 2
		"Mr. Bankman",
		"Центральный Банк вверх",
		"Следующая карта",
		0, 0, +60, 0,
		0, 0, 0, 0, 
		"Random", "Random",
		"None",
		0],
		
	"LoseTeamBottom" : 
		["Tutorial",
		"Mr. Bankman", 
		"Выбирай", #что говорит 2
		"Mr. Bankman",
		"Команда банка вниз",
		"Следующая карта",
		-60, 0, 0, 0,
		0, 0, 0, 0, 
		"Random", "Random",
		"None",
		0],
		
	"LoseCBUp" : 
		["Tutorial",
		"Mr. Bankman", 
		"Выбирай", #что говорит 2
		"Mr. Bankman",
		"Центральный банк вверх",
		"Следующая карта",
		0, 0, +60, 0,
		0, 0, 0, 0, 
		"Random", "Random",
		"None",
		0],
		
	"LoseTeamUp" : 
		["Tutorial",
		"Mr. Bankman", 
		"Выбирай", #что говорит 2
		"Mr. Bankman",
		"Команба банка вверх",
		"Следующая карта",
		+60, 0, 0, 0,
		0, 0, 0, 0, 
		"Random", "Random",
		"None",
		0],
		
	"LoseCutomButton" : 
		["Tutorial",
		"Mr. Bankman", 
		"Выбирай", #что говорит 2
		"Mr. Bankman",
		"Клиенты вниз",
		"Следующая карта",
		0, -60, 0, 0,
		0, 0, 0, 0, 
		"Random", "Random",
		"None",
		0],
		
	"LoseCustomUp" : 
		["Tutorial",
		"Mr. Bankman", 
		"Выбирай", #что говорит 2
		"Mr. Bankman",
		"Клиенты вверх",
		"Следующая карта",
		0, +60, 0, 0,
		0, 0, 0, 0, 
		"Random", "Random",
		"None",
		0],
		
	"LoseMoneyBottom" : 
		["Tutorial",
		"Mr. Bankman", 
		"Выбирай", #что говорит 2
		"Mr. Bankman",
		"Деньги вниз",
		"Следующая карта",
		0, 0, 0, -60,
		0, 0, 0, 0, 
		"Random", "Random",
		"None",
		0],
		
	"LoseMoneyUp" : 
		["Tutorial",
		"Mr. Bankman", 
		"Выбирай", #что говорит 2
		"Mr. Bankman",
		"Деньги вверх",
		"Следующая карта",
		0, 0, 0, +60,
		0, 0, 0, 0, 
		"Random", "Random",
		"None",
		0],
	
	"TutorLev1Card1" : 
		["Tutorial",
		"Mr. Bankman", 
		"Здравствуй! Меня зовут Mr. Bankman, но ты можешь звать меня просто Босс. Подай признак того, что ты живой и двинемся дальше. (Свайп влево или в право)", #что говорит 2
		"Mr. Bankman",
		"Да, я живой",
		"Где я?",
		0, 0, 0, 0,
		0, 0, 0, 0, 
		"TutorLev1Card2", "TutorLev1Card2",
		"None",
		0],
		
	"TutorLev1Card2" : 
		["Tutorial",
		"Mr. Bankman", 
		"Вчера вы успешно прошли собеседование и были приняты на работу в Банк. Приступайте к своим обязанностям сегодня же!", #что говорит 2
		"Mr. Bankman",
		"Что мне нужно делать?",
		"Какие у меня обязанности?",
		0, 0, 0, 0,
		0, 0, 0, 0, 
		"TutorLev1Card3", "TutorLev1Card3",
		"None",
		0],
		
	"TutorLev1Card3" : 
		["Tutorial",
		"Mr. Bankman", 
		"Всё очень просто! Выдавайте клиентам различные продукты Банка, налаживайте работу с коллегами, управляйте финансами и не портите отношений с Центральным Банком.", #что говорит 2
		"Mr. Bankman",
		"А сколько мне будут платить?",
		"Начнём рабочий день!",
		0, 0, 0, 0,
		0, 0, 0, 0, 
		"TutorLev1Card31", "Random",
		"None",
		0],
		
	"TutorLev1Card31" : 
		["Tutorial",
		"Mr. Bankman", 
		"Заработная плата в сделку не входила. А теперь за работу!", #что говорит 2
		"Mr. Bankman",
		"Какого...?",
		"Ты серьёзно?",
		0, 0, 0, 0,
		0, 0, 0, 0, 
		"Random", "Random",
		"None",
		0],
		
	"TutorLev2Card1" : 
		["Tutorial",
		"Mr. Bankman", 
		"Молодец, блистательно провёл свой первый рабочий день! И я хочу наградить тебя...", #что говорит 2
		"Mr. Bankman",
		"Ты начнёшь мне платить?",
		"У меня будет новая должность?",
		0, 0, 0, 0,
		0, 0, 0, 0, 
		"TutorLev2Card2", "TutorLev2Card2",
		"None",
		0],
	
	"TutorLev2Card2" : 
		["Tutorial",
		"Mr. Bankman", 
		"СТРОГИМ ВЫГОВОРОМ! Ты хоть представляешь скольким негодяям ты вчера отдал деньги?", #что говорит 2
		"Mr. Bankman",
		"Что??? В смысле??? Всё были порядочные!",
		"Почему ты считаешь их мерзавцами???",
		0, 0, 0, 0,
		0, 0, 0, 0, 
		"TutorLev2Card3", "TutorLev2Card3",
		"None",
		0],
	
	"TutorLev2Card3" : 
		["Tutorial",
		"Mr. Bankman", 
		"Теперь перед тем как выдавать банковские продукты, спрашивай на какие цели они им нужны. Ты можешь сделать это потянув карточку вниз", #что говорит 2
		"Mr. Bankman",
		"Какая разница на что ему продукты Банка!?",
		"Что за ерунду ты несёшь?",
		0, 0, 0, 0,
		0, 0, 0, 0, 
		"TutorLev2Card4", "TutorLev2Card4",
		"None",
		0],
		
	"TutorLev2Card4" : 
		["Tutorial",
		"Mr. Bankman", 
		"Наш отдел аналитики сообщает, что не стоит выдавать кредиты клиентам на инвестиции. А чтобы ты не забыл об этом внизу будет книжка с напоминанием", #что говорит 2
		"Mr. Bankman",
		"Злой ты, просто ужас",
		"Зарплату то платить мне начнёшь?",
		0, 0, 0, 0,
		0, 0, 0, 0, 
		"TutorLev2Card5", "TutorLev2Card5",
		"None",
		0],
		
	"TutorLev2Card5" : 
		["Tutorial",
		"Mr. Bankman", 
		"Возможно я выгляжу жестоким, но на самом деле Банк это живой организм. Чтобы он выжил, его нужно правильно кормить. За работу!", #что говорит 2
		"Mr. Bankman",
		"Убирать за ним какашки не нужно будет?",
		"Спинку с пузиком ему гладить тоже придётся?",
		0, 0, 0, 0,
		0, 0, 0, 0, 
		"TutorLev2Card6", "TutorLev2Card6",
		"None",
		0],
		
	"TutorLev2Card6" : 
		["Tutorial",
		"Mr. Bankman", 
		"И запомни. Банк — это место, где вам дадут взаймы денег, если вы докажете, что вам эти деньги не нужны.", #что говорит 2
		"Mr. Bankman",
		"Логично...",
		"Так вот как это работает...",
		0, 0, 0, 0,
		0, 0, 0, 0, 
		"Random", "Random",
		"None",
		0],
		
	"TutorLev3Card1" : 
		["Tutorial",
		"Mr. Bankman", 
		"Здравствуй дружок! Мы международный Банк и если во всём мире кризис, то мы тоже следуем мировым тенденциям!", #что говорит 2
		"Mr. Bankman",
		"К чему ты клонишь?",
		"Какой ещё кризис!? С миром всё впорядке",
		0, 0, 0, 0,
		0, 0, 0, 0, 
		"TutorLev3Card2", "TutorLev3Card2",
		"None",
		0],
		
	"TutorLev3Card2" : 
		["Tutorial",
		"Mr. Bankman", 
		"И так как сейчас тяжёлое время, мне пришлось урезать всем зарплату! Но не переживай дружок, ты единственный кого это не коснулось.", #что говорит 2
		"Mr. Bankman",
		"Естественно! Ты же мне не платишь!",
		"Ну ты мог брать с меня плату за мою же работу...",
		0, 0, 0, 0,
		0, 0, 0, 0, 
		"TutorLev3Card3", "TutorLev3Card3",
		"None",
		0],
		
		
	"TutorLev3Card3" : 
		["Tutorial",
		"Mr. Bankman", 
		"Ты быстро учишься! Сегодня коллеги будут к тебе немного... неравнодушны! Но ты правишься мой дорогой! А теперь ЗА РАБОТУ!", #что говорит 2
		"Mr. Bankman",
		"Да... без проблем...",
		"Мерзавец...",
		0, 0, 0, 0,
		0, 0, 0, 0, 
		"TeamDownFullDay", "TeamDownFullDay",
		"None",
		0],
		
	"TutorLev4Card1" : 
		["Tutorial",
		"Mr. Bankman", 
		"Как ты оцениваешь свою работу? Достаточно, чтобы повысить твою зарплату с нуля до одного доллара в месяц?", #что говорит 2
		"Mr. Bankman",
		"Может лучше уволишь меня сразу? Это не сложно...",
		"Я оценивать себя немного выше...",
		0, 0, 0, 0,
		0, 0, 0, 0, 
		"TutorLev4Card2", "TutorLev4Card2",
		"None",
		0],
		
	"TutorLev4Card2" : 
		["Tutorial",
		"Mr. Bankman", 
		"Не обижайся! Все мы с чего начинали. Кстати, а при взаимодействии с клиентами, ты проверяешь у них документы?", #что говорит 2
		"Mr. Bankman",
		"Какие ещё документы?",
		"Ты об этом не упомянал!",
		0, 0, 0, 0,
		0, 0, 0, 0, 
		"TutorLev4Card3", "TutorLev4Card3",
		"None",
		0],
		
	"TutorLev4Card3" : 
		["Tutorial",
		"Mr. Bankman", 
		"ЭТО НАПИСАНО В УСТАВЕ БАНКА! (швыряет вам в лицо книгу, вы пытаетесь найти упоминания о документах там)", #что говорит 2
		"Mr. Bankman",
		"Там ничего нет! Какого чёрта ты творишь!?",
		"Я всё делаю по инструкции, здесь какая-то ошибка",
		0, 0, 0, 0,
		0, 0, 0, 0, 
		"TutorLev4Card4", "TutorLev4Card4",
		"None",
		0],
		
	"TutorLev4Card4" : 
		["Tutorial",
		"Mr. Bankman", 
		"СМОТРИ ВНИМАТЕЛЬНЕЕ!!! (тыкает на последнюю страницу книги, где свежими черналами от руки написана рекомендация о проверке)", #что говорит 2
		"Mr. Bankman",
		"Этого здесь раньше не было, ты что только что это придумал?",
		"Ладно... ладно... разберёмся",
		0, 0, 0, 0,
		0, 0, 0, 0, 
		"TutorLev4Card5", "TutorLev4Card5",
		"None",
		0],
		
	"TutorLev4Card5" : 
		["Tutorial",
		"Mr. Bankman", 
		"С этого дня в обязательном порядке сверяй фотографию и имя клиента с указанным в документах. Понижаю твою зарплату с доллара до нуля!", #что говорит 2
		"Mr. Bankman",
		"Ну как так то???",
		"Может хватит издеваться надо мной?",
		0, 0, 0, 0,
		0, 0, 0, 0, 
		"Random", "Random",
		"None",
		0],
		
	"TutorLev5Card1" : 
		["Tutorial",
		"Mr. Bankman", 
		"Сегодня ко мне пришёл наш экономист Дарлс и рассказал, о том что женщины чаще возвращают долги по кредитам, чем мужчины", #что говорит 2
		"Mr. Bankman",
		"Оооо это любопытны факт",
		"Что ты будешь делать с этими знаниями о мудрейший?",
		0, 0, 0, 0,
		0, 0, 0, 0, 
		"TutorLev5Card2", "TutorLev5Card2",
		"None",
		0],
		
	"TutorLev5Card2" : 
		["Tutorial",
		"Mr. Bankman", 
		"Решено! Теперь мы сотрудничаем только с женщинами! Теперь мы оффициально женский Банк! Всем мужчинам отказ!", #что говорит 2
		"Mr. Bankman",
		"Один день тупее другого...",
		"В таком случае первый отказ твой!",
		0, 0, 0, 0,
		0, 0, 0, 0, 
		"Random", "Random",
		"None",
		0],
	
	"CreditHomeForCar" : 
		["Characters",
		"Sill Fpencer", 
		"Мне требуется кредит на покупку нового дома. Под залог могу оставить автомобиль. Деньги нужны очень срочно.", #что говорит 2
		"Силл Фпенсер",
		"В кредите отказано",
		"Да, конечно. Распишитесь",
		-15, -20, -10, 0,
		+10, +10, 0, -20, 
		"Random", "Random",
		"None",
		10],
		
	"Credit700000" : 
		["Characters",
		"Getty Green", 
		"Подруга сказала, что у вас можно получить быстрый займ. Мне требуется 700’000 до зарплаты. Я отдам на следующей неделе, обещаю.", #что говорит 2
		"Гэтти Грин",
		"Такой срок только под высокий %",
		"Одобрено",
		+20, -20, 0, 0,
		-15, +10, 0, -10, 
		"Credit7000001", "Random",
		"None",
		1],
		
	"Credit7000001" : 
		["Characters",
		"Getty Green", 
		"Но это же грабёж! Как можно так наживаться на нуждающихся?", #что говорит 2
		"Гэтти Грин",
		"Такова политика Банка",
		"Вместо % можете оплатить комиссию",
		+5, -5, 0, 0,
		+20, -10, 0, 0, 
		"Credit7000002", "Credit7000003",
		"None",
		1],
		
	"Credit7000002" : 
		["Characters",
		"Getty Green", 
		"Я буду жаловаться в Центральный Банк!", #что говорит 2
		"Гэтти Грин",
		"Удачи вам в этом деле",
		"Боюсь вашу жалобу быстро потеряют",
		0, -5, -20, 0,
		0, -5, -20, 0, 
		"Random", "Random",
		"None",
		1],
		
	"Credit7000003" : 
		["Characters",
		"Getty Green", 
		"Это уже получше. Переплачивать не хотелось, но видимо выбора нет", #что говорит 2
		"Гэтти Грин",
		"Это наши лучшие условия",
		"Вы не пожалеете",
		+10, +10, 0, -10,
		+10, +10, 0, -10, 
		"Random", "Random",
		"None",
		1],
		
	"CreditFlatFix" : 
		["Characters",
		"Sill Fpencer", 
		"Моей халупе давно требуется ремонт. Подрядчик насчитал 500 000. Это же грабеж! Можете ли вы одобрить мне такую сумму?", #что говорит 2
		"Силл Фпенсер",
		"Судя по внешнему виду, деньги вы не отдадите",
		"Конечно, ремонт это благое дело!",
		-10, -15, 0, 0,
		+10, +15, 0, -10, 
		"Random", "Random",
		"None",
		9],
		
	"CreditRefinance" : 
		["Characters",
		"Getty Green", 
		"Мнее нужна помощь! Сейчас оплачиваю 3 кредита в другом Банке. Но у вас выгоднее условия. Перекредитуйте меня, умоляю!", #что говорит 2
		"Гэтти Грин",
		"Может брать кредиты это не то, чем вам следует заниматься?",
		"Без проблем. Распишитесь здесь... кровью",
		0, -20, -10, 0,
		-5, +20, +10, -10, 
		"Random", "Random",
		"None",
		6],
		
	"CreditUniversity" : 
		["Characters",
		"Cark Mukerberg", 
		"Мне требуется займ на обучение в университете на программирование. Только можно ставку пониже? Я сейчас не так много зарабатываю...", #что говорит 2
		"Царк Мукерберг",
		"Мне жаль, но Банку тоже нужно зарабатывать",
		"Постараюсь выбить для вас самые лучшие условия",
		0, -5, 0, 0,
		-5, +20, +10, -10, 
		"CreditUniversity1", "CreditUniversity2",
		"None",
		2],
		
	"CreditUniversity1" : 
		["Characters",
		"Cark Mukerberg", 
		"Но... как же так? Это не справедливо... я не потяну такой ежемесячный платеж...", #что говорит 2
		"Царк Мукерберг",
		"Это бизнес... Банк не благотворительная организация",
		"Эх... у меня будут проблемы. Ладно сделаем условия получше",
		0, -20, -10, 0,
		-10, +5, 0, 0, 
		"Random", "CreditUniversity2",
		"None",
		2],
		
	"CreditUniversity2" : 
		["Characters",
		"Cark Mukerberg", 
		"Большое спасибо Вам! Я обязательно буду хорошо учиться и верну все деньги!", #что говорит 2
		"Царк Мукерберг",
		"Искренне желаю удачи",
		"Если ничего не получится, приходи работать в Банк",
		0, +10, 0, 0,
		0, +10, 0, 0, 
		"Random", "Random",
		"None",
		2],
		
	"DepositUniversity" : 
		["Characters",
		"Borren Uaffet", 
		"Добрый день! Хочу оставить у вас деньги на 5 лет, до совершеннолетия дочери. Сохраненные средства пойдут на обучение.", #что говорит 2
		"Боррен Уаффет",
		"Извините, в Банкее и так много денег",
		"С удовольствием примем ваши дары... т.е. сбережения",
		0, +10, 0, 0,
		0, +10, 0, 0, 
		"Random", "Random",
		"None",
		12],
		
	"DepositStolenCars" : 
		["Characters",
		"Liktor Vustig", 
		"Хочу оставить у вас деньги на сохранение. Вчера не плохо заработал на продаже краденных... ой на продаже своих автомобилей. Да я их ранее коллекционировал!", #что говорит 2
		"Ликтор Вюстиг",
		"Краденных? Нука идите отсюда!",
		"Не важно. Деньги не пахнут",
		-5, +10, +5, 0,
		0, +10, -20, +18, 
		"Random", "Random",
		"None",
		12],
		
	"DepositSelledFlat" : 
		["Characters",
		"Kikolas Nage", 
		"Недавно продал квартиру и заметил, что жена начала покупать себе платья. Денег скоро не останеется! Подскажите, что мне делать?", #что говорит 2
		"Киколас Нейдж",
		"Потратьте оставшуюсю сумму на себя",
		"Остасьте у нас. Банк может на этом заработать",
		-11, +10, 0, 0,
		+13, -8, 0, 8, 
		"Random", "DepositSelledFlat1",
		"None",
		12],
		
	"DepositSelledFlat1" : 
		["Characters",
		"Kikolas Nage", 
		"Вы хотели сказать, что я заработаю?", #что говорит 2
		"Киколас Нейдж",
		"Тут все сложнее... но да вы правы!",
		"Конечно, я так и сказал",
		+5, +10, 0, +20,
		+5, +10, 0, +20, 
		"Random", "Random",
		"None",
		12],
		
	"DepositMadRetired" : 
		["Characters",
		"Bichard Ranson", 
		"AAAAAAAAA AAAAAAAA AAAAAA AAAAAAA AAAAAA AAAAAAAA AAAAAA AAAAA AAAAAA AAAAAA", #что говорит 2
		"Бичард Рэнсон",
		"Что происходит?",
		"Почему вы кричите?",
		0, 0, 0, 0,
		0, 0, 0, 0,
		"DepositMadRetired1", "DepositMadRetired1",
		"None",
		14],
		
	"DepositMadRetired1" : 
		["Characters",
		"Bichard Ranson", 
		"Все в порядке. Просто после продолжительных криков меня обслуживают вне очереди. AAA AAAA AAAA AAAA", #что говорит 2
		"Бичард Рэнсон",
		"Охрана! Выведите его!",
		"Хорошо, только не кричите",
		0, -13, 0, 0,
		0, +6, 0, 0,
		"Random", "DepositMadRetired2",
		"None",
		14],
		
	"DepositMadRetired2" : 
		["Characters",
		"Bichard Ranson", 
		"Отлично! Мне двойной гамбургер и диетическую колу! И картошку! И Игрушку! Иии... и...", #что говорит 2
		"Бичард Рэнсон",
		"Мы Банк, а не фастфуд! Проваливайте отсюда!",
		"Может банковские продукты утолят ваш финансовый голод?",
		0, -7, 0, 0,
		0, +4, 0, 0,
		"Random", "DepositMadRetired3",
		"None",
		14],
		
	"DepositMadRetired3" : 
		["Characters",
		"Bichard Ranson", 
		"Хм... у менянет финансового голода, но определенно есть желание вложить финансы. Открою у вас вклад!", #что говорит 2
		"Бичард Рэнсон",
		"Ух... солидная сумма",
		"Вы не пожалеете",
		+7, +3, 0, +17,
		+7, +3, 0,+17,
		"Random", "DepositMadRetired2",
		"None",
		12],
		
	"DepositRetired" : 
		["Characters",
		"Borren Uaffet", 
		"Мне нужно куда-то спрятать деньги от жены. Могла бы вы открыть мне вклад. Так они лучше сохранятся", #что говорит 2
		"Боррен Уаффет",
		"Жадный ты",
		"Я вас прекрасно понимаю. Давайте деньги сюда.",
		-12, -15, -10, 0,
		+7, +3, +13, +12,
		"Random", "Random",
		"None",
		12],
	
	"CardToChineseWhoWantToLearnLanguage" : 
		["Characters",
		"Mjack Da", 
		"Приведствую!..", #что говорит 2
		"Мжек Да",
		"Добрый день!",
		"Чем я могу вам помочь?",
		0, 0, 0, 0,
		0, 0, 0, 0,
		"CardToChineseWhoWantToLearnLanguage1", "CardToChineseWhoWantToLearnLanguage1",
		"None",
		0],
		
	"CardToChineseWhoWantToLearnLanguage1" : 
		["Characters",
		"Mjack Da", 
		"Во бу доунг дангди уяуан кьюнг банг банг во!", #что говорит 2
		"Мжек Да",
		"Аааа???",
		"Что???",
		0, 0, 0, 0,
		0, 0, 0, 0,
		"Random", "Random",
		"None",
		0],
		
	"CardToShopping" : 
		["Characters",
		"Bichard Ranson", 
		"Мне нужна кредитная карта! Срочно! Мой психолог сказал, что шоппинг за чужой счет излучит меня от недугов!", #что говорит 2
		"Бичард Рэнсон",
		"Странный у вас доктор",
		"Доктор плохого не посоветует",
		+7, -7, 0, 0,
		0, +7, 0, -7,
		"Random", "Random",
		"None",
		4],
		
	"CardToAirways" : 
		["Characters",
		"Getty Green", 
		"Мне нужна кредитная карта для путешествий. Уже сил моих больше нет. Денег у меня нет, а отдохнуть хочется", #что говорит 2
		"Гэтти Грин",
		"Будьте аккуратны, деньги придется возвращать",
		"Карточку одобряем? хорошего путешествия",
		+7, -7, +8, 0,
		0, +14, 0, -7,
		"Random", "Random",
		"None",
		5],
		
	"CardToSallary" : 
		["Characters",
		"Getty Green", 
		"Мой босс стабильно задерживает мне зарплату на 10 дней. Дай те мне кредитную карту, чтобы мне было легче доживать до зарплаты", #что говорит 2
		"Гэтти Грин",
		"Может лучше сменить работу?",
		"Приводате его к нам. Заставим взять кредит! Отомстим за вас! Держите карту",
		0, -10, 0, 0,
		0, +14, 0, -7,
		"Random", "Random",
		"None",
		1],
		
	"CardToDebt" : 
		["Characters",
		"Getty Green", 
		"Денег ни на что не хватает... мне нужен дополнительный источнык дохода", #что говорит 2
		"Гэтти Грин",
		"Устройтесь работать в Банк. К деньгам поближе",
		"Все проблемы можно решить  помощью нашей кредитки. Держите!",
		0, -10, 0, 0,
		+10, +14, 0, -7,
		"Random", "Random",
		"None",
		1],
		
	"InvestitionGreenInvestor" : 
		["Characters",
		"El'Fa", 
		"Мне в контакт-центре сказали, что я могу с вами прилично заработать вложив небольшую сумму. Что мне нужно делать?", #что говорит 2
		"Эль'Фа",
		"Бесплатный сыр может быть только в мышеловке",
		"Речь об инвестициях. Сейчас откроем вам счет",
		-18, -14, -9, 0,
		+4, +4, +4, 0,
		"Random", "InvestitionGreenInvestor1",
		"None",
		13],
		
	"InvestitionGreenInvestor1" : 
		["Characters",
		"El'Fa", 
		"И что мне потребуется делать? Чтобы заработать?", #что говорит 2
		"Эль'Фа",
		"Вложить все свои деньги в убыточную компанию и разориться",
		"Вложить все деньги и вести себя как миллионер",
		-5, -10, 0, 0,
		+4, +4, +4, +5,
		"Random", "Random",
		"None",
		13],
		
	"InvestitionOldInvestor" : 
		["Characters",
		"Borren Uaffet", 
		"Срочно! Скоро акции компании Cherry взлетят вверх! Закупите на мой счет 1 000 акций!", #что говорит 2
		"Боррен Уаффет",
		"Да? Я слышал они банкроты",
		"Сию минуту сэр!",
		0, 0, -17, 0,
		+4, +4, +4, +7,
		"Random", "Random",
		"None",
		13],
		
	"InvestitionOpen" : 
		["Characters",
		"Dabygale Eonson", 
		"Недавно я закрыла инвестиционный счет в другом Банке. Хочу открыть его у вас, потому что вы имеете более выгодные условия", #что говорит 2
		"Дэбигейл Эонсон",
		"Ну наша комиссия тоже заберет не мало ваших денег",
		"Да, мы самый честный и выгодный банк!",
		0, -12, 0, 0,
		+4, +4, -14, +7,
		"Random", "Random",
		"None",
		13],
		
	"InvestitionClose" : 
		["Characters",
		"Crowley Shepard", 
		"Я требую закрыть мой инвестиционный счет! Ваши менеджеры плохие советчики. Я потерял из-за вас много денег!", #что говорит 2
		"Кроули Шеппард",
		"Сам виноват. Инвестиции - это риск",
		"Мне очень жаль, сэр. Дайте Банку еще один шанс",
		-7, -12, 0, -8,
		0, 0, 0, 0,
		"Random", "InvestitionClose1",
		"None",
		15],
		
	"InvestitionClose1" : 
		["Characters",
		"Crowley Shepard", 
		"Хорошо. Что вы будете делать?", #что говорит 2
		"Кроули Шеппард",
		"Вгоню вас в еще больший долг, естественно",
		"Куплю вам акции Cherry. Надежный источник посоветовал",
		+5, -12, 0, -8,
		+5, 0, 0, +12,
		"Random", "Random",
		"None",
		15],
		
	"CreditHonestly" : 
		["Characters",
		"Liktor Vustig", 
		"Даёте ли вы кредит под честное слово?", #что говорит 2
		"Ликтор Вюстиг",
		"Нет, Банку всегда требуются гарантии возврата",
		"Конечно! Банк верит всем",
		+5, -18, 0, 0,
		-19, 0, 0, 0,
		"Random", "CreditHonestly1",
		"None",
		14],
		
	"CreditHonestly1" : 
		["Characters",
		"Liktor Vustig", 
		"А если я не верну деньги?", #что говорит 2
		"Ликтор Вюстиг",
		"Так дело не пойдёт! В кредите отказано",
		"Вам будет стыдно перед Всевышним, когда предстанете",
		0, -7, 0, 0,
		+5, -8, 0, 0,
		"Random", "CreditHonestly2",
		"None",
		14],
		
	"CreditHonestly2" : 
		["Characters",
		"Liktor Vustig", 
		"Так это будет совсем не скоро", #что говорит 2
		"Ликтор Вюстиг",
		"Ну если не вернёте, то предстанете довольно скоро",
		"В кредите отказано",
		0, -7, 0, 0,
		+5, -12, 0, 0,
		"Random", "Random",
		"None",
		14],
		
	"CreditReturnCredit" : 
		["Characters",
		"Getty Green", 
		"Бывало, придешь к хорошим отзывчивым людям, займешь у них три тысячи долларов, а отдавать приходится злобным бесчеловечным мерзавцам", #что говорит 2
		"Гэтти Грин",
		"Чем мы вас обидели???",
		"Рад что вы наконец пришли вернуть займ",
		0, -7, 0, +20,
		+12, 0, 0, +20,
		"Random", "Random",
		"None",
		15],
		
	"CreditRobbery" : 
		["Characters",
		"Bichard Ranson", 
		"(Держит в руках игрушечный пистолет). Не сместа! Это ограбление! Отдавайте 700 000 наличными. ЖИВО!", #что говорит 2
		"Бичард Рэнсон",
		"Адриан... это третий раз за месяц... Я всё же поговорю с твоим психиатором",
		"Конечно, только оставьте свой номер телефона",
		+8, -18, 0, 0,
		-7, 0, 0, -20,
		"Random", "CreditRobbery1",
		"None",
		15],
		
	"CreditRobbery1" : 
		["Characters",
		"Bichard Ranson", 
		"Зачем?", #что говорит 2
		"Бичард Рэнсон",
		"Отправлю тебе завтра СМС с условиями кредита",
		"Коллекторам нужно будет тебе как-то звонить",
		+8, -15, +20, -10,
		+7, 0, -20, -10,
		"Random", "Random",
		"None",
		15],
		
	"CreditLiveAt15Oclock" : 
		["Characters",
		"Getty Green", 
		"Мой Босс говорит что я зарабатываю так много, что мне хватит денег до конца моей жизни... Судя по всему сегодня в 15:00 я умру", #что говорит 2
		"Гэтти Грин",
		"Сейчас оформим кредит на похороны. Мы самый гуманный банк в Мире!",
		"Сейчас откроем вам инвестиционный счет, дальше дело техники!",
		+12, -15, 0, -20,
		+7, 0, -20, -10,
		"Random", "Random",
		"None",
		15],
		
	"CardSmartBlocking" : 
		["Characters",
		"Kikolas Nage", 
		"Знаете я давний клиент вашего Банка, но у меня есть проблемы с женщинами...", #что говорит 2
		"Киколас Нейдж",
		"Эмн... мне кажется вам лучше наведаться к проктологу",
		"Сэр, можете описать подробнее, я хочу вам помочь",
		0, -15, 0, 0,
		0, 0, 0, 0,
		"Random", "CardSmartBlocking1",
		"None",
		12],
		
	"CardSmartBlocking1" : 
		["Characters",
		"Kikolas Nage", 
		"Я очень быстро влюбляюсь в первую встречную женщину и как правило трачу на неё целое состояние...", #что говорит 2
		"Киколас Нейдж",
		"Понятно... вот номер телефона моей сестры, ей нужны деньги на колледж",
		"Держите эти умные часы. При учащении пулься они заблокируют все ваши счета",
		-12, +12, 0, 0,
		+12, +12, 0, 0,
		"Random", "Random",
		"None",
		12],
		
		
	"CardAffraidOfPay" : 
		["Characters",
		"Sill Fpencer", 
		"Экономия — это искусство тратить деньги, не получая никакого удовольствия", #что говорит 2
		"Стилл Фпенсер",
		"Возьмите телефон моего психолога, он поможет",
		"Это потому, что вы тратите свои деньги",
		-8, -17, 0, 0,
		+15, 0, 0, 0,
		"Random", "CardAffraidOfPay1",
		"None",
		12],
		
	"CardAffraidOfPay1" : 
		["Characters",
		"Sill Fpencer", 
		"???", #что говорит 2
		"Стилл Фпенсер",
		"Вижу, ты тупой... ладно забудь",
		"Вот тебе кредитная карта и адрес стрип бара. Оттянись там как следует за счет Банка",
		+9, -11, -11, 0,
		+15, +15, 0, -10,
		"Random", "Random",
		"None",
		12],
		
	"IncassationCrush" : 
		["Characters",
		"Crowley Shepard", 
		"Мне подарили талисман, который притягивает деньги. Повесил его перед лобовым стеклом. На следующий день в меня въехала инкассаторская машина.", #что говорит 2
		"Кроули Шеппард",
		"Мне, то что?",
		"Какая грусть... могу дать вам кредит на ремонт!",
		0, 0, 0, 0,
		+13, 0, 0, 0,
		"IncassationCrush1", "IncassationCrush1",
		"None",
		15],
		
	"IncassationCrush1" : 
		["Characters",
		"Crowley Shepard", 
		"Это была инкассаторская машина вашего Банка! Я требую возмещения ущерба!", #что говорит 2
		"Кроули Шеппард",
		"Ага, вижу вы не оформляли страховки. В возмещении отказано! Пшол вон!",
		"Сэр, мне очень жаль. Да Банк возместит весь ущерб сполна",
		0, -14, -20, 0,
		-13, +12, 0, -10,
		"Random", "Random",
		"None",
		15],
		
	"CreditDenyLoterry" : 
		["Characters",
		"Dabygale Eonson", 
		"Почему ваш банк отказал мне в кредите на открытие бизнеса!?", #что говорит 2
		"Дэбигейл Эонсон",
		"Бизнес-план «Покупка 10 000 лотерейных билетов», плохая идея",
		"Ваш Бизнес-план нужно немного доработать. Приходите позже",
		+12, -12, 0, 0,
		0, +7, 0, 0,
		"Random", "Random",
		"None",
		3],
		
	"MerryTOBankir" : 
		["Characters",
		"Sanna Acol Nitt", 
		"Знаешь, у меня теперь совсем другие требования к мужчинам. Главное, чтобы он был добрый, нежный, щедрый… Как думаешь, остались еще такие банкиры?", #что говорит 2
		"Санна Аколь Нитт",
		"Извини милая, но я уже женат",
		"Mr. Bankman выглядит свободным...",
		0, -8, 0, 0,
		+7, +7, 0, 0,
		"Random", "Random",
		"None",
		13],
		
	"BankRobberyMe" : 
		["Characters",
		"Bichard Ranson", 
		"Я периодический проворачиваю ограбления Банков", #что говорит 2
		"Бичард Рэнсон",
		"Такс... я вызываю охрану",
		"Что вас побудило встать на этот путь?",
		0, 0, +12, 0,
		0, 0, 0, 0,
		"Random", "BankRobberyMe1",
		"None",
		14],
		
	"BankRobberyMe1" : 
		["Characters",
		"Bichard Ranson", 
		"Банк первый начал грабить меня!", #что говорит 2
		"Бичард Рэнсон",
		"Ну такова жизнь...",
		"Понимаю... Банк экономит и отпускает охранников по выходным",
		0, 0, 0, 0,
		-10, 0, -10, -10,
		"Random", "Random",
		"None",
		14],
		
	"ForgiveMeCredit" : 
		["Characters",
		"Getty Green", 
		"Сегодня прощёное воскресенье! Вы знаете, что это значит? :)", #что говорит 2
		"Гэтти Грин",
		"Нет, мы не простим вам кредит. Оплачивайте его по графику",
		"Сегодня вторник...",
		+3, -7, 0, +13,
		0, 0, 0, 0,
		"Random", "Random",
		"None",
		15], 
		
	"InvestitionBillion" : 
		["Characters",
		"Liktor Vustig", 
		"Идея: беру кредит в банке 1 миллиард, покупаю этот банк, разрешаю себе не отдавать кредит! Я — олигарх! Гениально же!?", #что говорит 2
		"Ликтор Вюстиг",
		"Может лучше устроишься наконец на работу!?",
		"Отличная идея! Осталось получить одобрение на эту сумму...",
		+14, -7, 0, 0,
		0, +14, 0, 0,
		"Random", "Random",
		"None",
		3],
		
	"InvestitionCreditToBank" : 
		["Characters",
		"Borren Uaffet", 
		"Здравствуйте! Я к вам по поводу кредита", #что говорит 2
		"Боррен Уаффет",
		"Какая сумма вам нужна?",
		"На что собираете потратить деньги?",
		0, 0, 0, 0,
		0, 0, 0, 0,
		"InvestitionCreditToBank1", "InvestitionCreditToBank1",
		"None",
		13],
		
	"InvestitionCreditToBank1" : 
		["Characters",
		"Borren Uaffet", 
		"На самом деле я пришел, потмоу что деньги нужны вам...", #что говорит 2
		"Боррен Уаффет",
		"Что???",
		"В смысле???",
		0, 0, 0, 0,
		0, 0, 0, 0,
		"InvestitionCreditToBank2", "InvestitionCreditToBank2",
		"None",
		13],
		
	"InvestitionCreditToBank2" : 
		["Characters",
		"Mr. Bankman", 
		"Всё нормально парень. Большие дяди сейчас переговорят и мы получим дополнительные инвестиции. Иди пока поиграть в песочнице", #что говорит 2
		"Mr. Bankman",
		"Ладно... ладно...",
		"Я не ребёнок...",
		0, 0, 0, +30,
		0, 0, 0, +30,
		"Random", "Random",
		"None",
		13], 
		
	"DepositLoanForAfriend" : 
		["Characters",
		"Mr. Bankman", 
		"К тебе подошел человек, чтобы занять у тебя деньги. Твои действия?", #что говорит 2
		"Mr. Bankman",
		"Оценил бы по одежде его платежеспособность",
		"Рискованно давать деньги тому, кто просил их у тебя, а не у Банка",
		0, 0, 0, 0,
		0, 0, 0, 0,
		"DepositLoanForAfriend1", "DepositLoanForAfriend2",
		"None",
		0],
		
	"DepositLoanForAfriend1" : 
		["Characters",
		"Mr. Bankman", 
		"Не такого ответа я жду от сотрудников своего Банка. Никогда не давай никому свои деньги. Веди их в Банк. ТЫ не пострадаешь да еще и комиссионные получишь!", #что говорит 2
		"Mr. Bankman",
		"Принято",
		"Учту сэр",
		-10, 0, 0, 0,
		+10, 0, +5, 0,
		"Random", "Random",
		"None",
		0],
		
	"DepositLoanForAfriend2" : 
		["Characters",
		"Mr. Bankman", 
		"Другого ответа я и не ожидал от того кто работает на меня. А теперь за работу! Продолжай зарабатывать для меня деньги!", #что говорит 2
		"Mr. Bankman",
		"а когда я буду зарабатывать их для себя?",
		"во славу Банка!",
		0, 0, 0, 0,
		0, 0, 0, 0,
		"Random", "Random",
		"None",
		0],
		
	"DepositSaveMoney" : 
		["Characters",
		"Mr. Bankman", 
		"Банк берет деньги у клиентов для того чтобы...", #что говорит 2
		"Mr. Bankman",
		"сберечь деньги клиентов!",
		"сберечь свои деньги!",
		-17, 0, 0, -17,
		+17, 0, 0, +17,
		"DepositSaveMoney1", "DepositSaveMoney2",
		"None",
		0],
		
	"DepositSaveMoney1" : 
		["Characters",
		"Mr. Bankman", 
		"Мой Банк находится в большой опасности...", #что говорит 2
		"Mr. Bankman",
		"Что я такого сказал?",
		"То есть Банк... оооо... Я понял",
		0, 0, 0, 0,
		0, 0, 0, 0,
		"Random", "Random",
		"None",
		0],
		
	"DepositSaveMoney2" : 
		["Characters",
		"Mr. Bankman", 
		"Молодчина! А теперь иди, принеси мне ещё денжат, чтобы я мог раздать их другим. ЗА ПЛАТУ!", #что говорит 2
		"Mr. Bankman",
		"Какой же ты... жадный",
		"Зарплату то когда начнёшь платить?",
		0, 0, 0, 0,
		0, 0, 0, 0,
		"Random", "Random",
		"None",
		0],
		
	"DepositPovertyIsNotAVice" : 
		["Characters",
		"Dabygale Eonson", 
		"Шепотом: Я хочу положить на мой счет три миллиона долларов!", #что говорит 2
		"Дэбигейл Эонсон",
		"Говорите громче, бедность у нас не считается пороком!!!",
		"Конечно!",
		0, -12, 0, +20,
		0, 0, 0, +20,
		"Random", "Random",
		"None",
		12],
		
	"CreditListIpotec" : 
		["Characters",
		"Kikolas Nage", 
		"Что это значит!? Показывает лист: Взяв этот листок, вы дали согласие на заключение договора ипотечного кредита под 30 процентов годовых сроком на 10 лет", #что говорит 2
		"Киколас Нейдж",
		"Отлично... ещё один попался!",
		"Добро пожаловать в наш чудестный Банк!",
		+8, -12, 0, -10,
		+8, +7, 0, -10,
		"Random", "Random",
		"None",
		8], 
		
	"CreditMoneySource" : 
		["Characters",
		"Sanna Acol Nitt", 
		"Хочу взять деньги в кредит, на новое платье", #что говорит 2
		"Санна Аколь Нитт",
		"Хорошо, подскажите какой источник вашего дохода?",
		"Вы не похожи на леди у которой есть работа...",
		+10, 0, 0, 0,
		0, -10, 0, 0,
		"CreditMoneySource1", "CreditMoneySource1",
		"None",
		4],
		
	"CreditMoneySource1" : 
		["Characters",
		"Sanna Acol Nitt", 
		"Источник моего дохода: ухажер", #что говорит 2
		"Санна Аколь Нитт",
		"Хахаха... кредит одобрен!",
		"Ну...  почему-то... так и думал :)",
		0, +9, 0, -10,
		0, -5, 0, -10,
		"Random", "Random",
		"None",
		4],
		
	"StaffEconomicalQuestions" : 
		["Tutorial",
		"Darls Coy",
		"На самом деле экономисты отвечают на вопросы не потому, что знают на них ответы", #что говорит 2
		"Дарлс Коу",
		"Мне это не интересно",
		"???",
		-15, 0, 0, 0,
		0, 0, 0, 0,
		"Random", "StaffEconomicalQuestions1",
		"None",
		0],
		
	"StaffEconomicalQuestions1" : 
		["Tutorial",
		"Darls Coy", 
		"Мы отвечаем потому, что нас спрашивают", #что говорит 2
		"Дарлс Коу",
		"Так вот почему экономика страны в заднице",
		"Блин, ты серьёзно?",
		-10, 0, 0, 0,
		0, 0, 0, 0,
		"Random", "Random",
		"None",
		0],
		
	"CreditIfIwontReturn" :
		["Characters",
		"Dabygale Eonson", 
		"А если я не верну деньги, которые у вас занял?", #что говорит 2
		"Дэбигейл Эонсон",
		"Продадим ваш долг менее приятному банку",
		"Вам будет стыдно перед Всевышним, когда предстанете",
		+14, -12, -5, 0,
		+7, -13, 0, 0,
		"Random", "CreditIfIwontReturn1",
		"None",
		15],
		
	"CreditIfIwontReturn1" : 
		["Characters",
		"Dabygale Eonson", 
		"Когда это ещё будет...", #что говорит 2
		"Дэбигейл Эонсон",
		"Вот, если десятого не вернете, одиннадцатого предстанете",
		"Бог, вам судья",
		+12, -8, -12, +20,
		-12, 0, 0, -14,
		"Random", "CreditIfIwontReturn1",
		"None",
		15],
		
	"ComplainsCredit" : 
		["Characters",
		"Mr. Bankman", 
		"Банк идет навстречу клиенту. Даёт денег столько, сколько они хотят, чтобы...", #что говорит 2
		"Mr. Bankman",
		"помочь людям?",
		"заработать?",
		-15, 0, +22, 0,
		+9, 0, -12, 0,
		"ComplainsCredit1", "ComplainsCredit2",
		"None",
		0],
		
	"ComplainsCredit1" : 
		["Characters",
		"Mr. Bankman", 
		"И как ты ещё не разорил мой Банк!?", #что говорит 2
		"Mr. Bankman",
		"...",
		"Я стараюсь, но не получается",
		0, 0, 0, 0,
		0, 0, 0, 0,
		"Random", "Random",
		"None",
		0],
		
	"ComplainsCredit2" : 
		["Characters",
		"Mr. Bankman", 
		"Умничка! Чтобы мы взяли с них столько сколько хотим!", #что говорит 2
		"Mr. Bankman",
		"...",
		"Даааа... ты гений...",
		0, 0, 0, 0,
		0, 0, 0, 0,
		"Random", "Random",
		"None",
		0],
		
		
	"InvestitionSmallBusiness" :
		["Characters",
		"Kikolas Nage", 
		"Я хочу начать малый бизнес. Что мне делать?", #что говорит 2
		"Киколас Нейдж",
		"Не стоит, мой босс начал бизнес. Теперь приходится на него работать",
		"Займите у нас деньги, купите большой бизнес и подождите",
		-18, -12, 0, 0,
		0, +12, 0, -20,
		"Random", "Random",
		"None",
		3],
		
		
	"CreditCleymoIpotek" :
		["Characters",
		"Crowley Shepard", 
		"(читает толстенный договор ипотечного кредита и морщится)", #что говорит 2
		"Кроули Шеппард",
		"Я тоже не понимаю, что написано в этом договоре",
		"Вас, что-то смущает?",
		0, -6, 0, 0,
		0, +12, 0, 0,
		"Random", "CreditCleymoIpotek1",
		"None",
		8],
		
		
	"CreditCleymoIpotek1" : 
		["Characters",
		"Crowley Shepard", 
		"Да вот здесь, параграф 1594, пункт 18: На лбу клиента калёным железом выжигается клеймо с логотипом банка.", #что говорит 2
		"Кроули Шеппард",
		"Хорошо... вколим вам обезболивающее за доп плату",
		"Всегда приходится чем-то жертвовать",
		+18, -6, 0, +6,
		0, -12, 0, 0,
		"Random", "CreditCleymoIpotek1",
		"None",
		8],
		
		
	"ClaimGrandmother" : 
		["Characters",
		"Bantonio Anderas", 
		"Я задержал банду бабушек специально создававших очередь в кассах. Что мне с ними сделать?", #что говорит 2
		"Бантонио Андерас",
		"Рецедевистов нужно сажать в тюрьму",
		"Может всё же спросим их, чего они хотят?",
		+12, -18, 0, 0,
		0, +14, 0, 0,
		"Random", "ClaimGrandmother1",
		"None",
		0],
		
		
	"ClaimGrandmother1" : 
		["Characters",
		"Barlo Cenetton",
		"Два года назад мы открыли здесь счет! Тогда у Банка было иное название и нам сообщили, что Банк разорился, но это ложь! Владелец то старый!", #что говорит 2
		"Барло Сенеттон",
		"Я здесь работаю недавно...",
		"Ну... эмн....",
		0, -7, 0, 0,
		0, -7, 0, 0,
		"ClaimGrandmother2", "ClaimGrandmother2",
		"None",
		14],
		
	"ClaimGrandmother2" : 
		["Characters",
		"Mr. Bankman", 
		"Не переживай малыш, я разберусь с этим. Итак дорогие дамы...", #что говорит 2
		"Mr. Bankman",
		"Скажешь им, что ты не крал их деньги?",
		"Вернёшь им деньги?",
		0, 0, 0, 0,
		0, 0, 0, 0,
		"ClaimGrandmother3", "ClaimGrandmother3",
		"None",
		0],
		
	"ClaimGrandmother3" : 
		["Characters",
		"Mr. Bankman", 
		"... вы сможете забрать все свои деньги все, но никогда, либо ничего, но сегодня! Выбирайте!", #что говорит 2
		"Mr. Bankman",
		"Блин... на кого мне приходится работать?",
		"Ну... это тоже ответ на происходящее...",
		0, -7, 0, +10,
		0, -7, 0, +10,
		"Random", "Random",
		"None",
		0],
		
		
	"CreditNotInMyWay" : 
		["Characters",
		"Getty Green",
		"Я хотела бы оформить кредит... уже шестой возьму в вашей Банке...", #что говорит 2
		"Гэтти Грин",
		"Не уверен, что тебе стоит это делать",
		"Так... у вас ведь есть счет в нашем Банке?",
		0, -12, 0, 0,
		0, 0, 0, 0,
		"Random", "CreditNotInMyWay1",
		"None",
		1],
		
	"CreditNotInMyWay1" : 
		["Characters",
		"Getty Green", 
		"Да и он не в мою пользу", #что говорит 2
		"Гэтти Грин",
		"Может брать кредиты это не твоё?",
		"Вы испытываете финансовые проблемы?",
		0, -4, 0, 0,
		0, 0, 0, 0,
		"Random", "CreditNotInMyWay2",
		"None",
		1],
		
	"CreditNotInMyWay2" : 
		["Characters",
		"Getty Green", 
		"Нет, потому что у меня нет финансов", #что говорит 2
		"Гэтти Грин",
		"Отказано!",
		"Совесть не позволит выдать вам ещё один кредит",
		0, -4, 0, 0,
		0, +6, 0, 0,
		"Random", "Random",
		"None",
		1],
		
	"ClaimBankTrustYou" : 
		["Characters",
		"Crowley Shepard", 
		"«Банк Вам доверяет», - гласит реклама. А вы требуете паспорт, чтобы принять МОИ деньги, и просите подписать договор привязанной ручкой.", #что говорит 2
		"Кроули Шеппард",
		"Все это ради нашей безопасности",
		"Все это ради вашей безопасности",
		+17, -17, 0, +12,
		-17, +17, 0, +12,
		"Random", "Random",
		"None",
		12],
		
		
	"InvestitionFlipOver" : 
		["Characters",
		"El'Fa", 
		"Хочу ворочать миллионами! Можете это устроить?", #что говорит 2
		"Эль'Фа",
		"Усердно работайте и вы добьётесь успеха сами",
		"У нас есть услуга переворачивания в инкассаторской машине",
		0, -18, 0, 0,
		+14, 0, 0, +13,
		"Random", "Random",
		"None",
		3],
		
		
	"DepositLetterWrite" : 
		["Characters",
		"Barlo Cenetton", 
		"Хочу выписать чек на 5 000. Вот заполненный бланк. (Вы замечаете, что не хватает подписи)", #что говорит 2
		"Барло Сенеттон",
		"Мадам, без подписи он не действителен",
		"Вам нужно расписаться ниже",
		0, 0, 0, 0,
		0, 0, 0, 0,
		"DepositLetterWrite1", "DepositLetterWrite1",
		"None",
		0],
		
	"DepositLetterWrite1" : 
		["Characters",
		"Barlo Cenetton", 
		"А как правильно расписываться? Я ранее этого не делала...", #что говорит 2
		"Барло Сенеттон",
		"Без разницы, пишитее что угодно",
		"Ну как вы открытки подписываете?",
		0, 0, 0, 0,
		0, 0, 0, 0,
		"DepositLetterWrite2", "DepositLetterWrite2",
		"None",
		0],
		
	"DepositLetterWrite2" : 
		["Characters",
		"Barlo Cenetton", 
		"(протягивает вам чем с надписью «С любовью и наилучшими пожеланиями»)", #что говорит 2
		"Барло Сенеттон",
		"...",
		"...",
		0, 0, 0, 0,
		0, 0, 0, 0,
		"Random", "Random",
		"None",
		0],
		
		
	"CreditRefrigerator" : 
		["Characters",
		"Sill Fpencer", 
		"Я пришел для погашения кредита. Подскажите в какое окно мне подойти?", #что говорит 2
		"Стилл Фпенсер",
		"Я что? Справочное бюро? Иди спроси у охранника!",
		"Кредит оформлен на Вас?",
		0, -15, 0, 0,
		0, 0, 0, 0,
		"Random", "CreditRefrigerator1",
		"None",
		0],
		
	"CreditRefrigerator1" : 
		["Characters",
		"Sill Fpencer", 
		"Нет, на холодильник. (показывает документы)", #что говорит 2
		"Стилл Фпенсер",
		"Боюсь, вы шиблись Банком",
		"Вам во 2е окно, 5го этажа по адресу Вантер стрит 8",
		0, -10, 0, 0,
		0, +15, 0, 0,
		"Random", "Random",
		"None",
		0],
		
		
	"CreditDeathScheme" : 
		["Characters",
		"Liktor Vustig", 
		"Я нашёл метод оказаться умнее Банков! Хочешь расскажу!?", #что говорит 2
		"Ликтор Вюстиг",
		"У меня нет времени на твои авантюры Люстиг...",
		"Буду рад послушать (улыбаетесь)",
		0, -10, 0, 0,
		0, 0, 0, 0,
		"Random", "CreditDeathScheme1",
		"None",
		3],
		
	"CreditDeathScheme1" : 
		["Characters",
		"Liktor Vustig", 
		"Оформить кредит со страховкой от смерти, купить свидетельство о смерти, обратится в страховую за компенсацией. Повторить!", #что говорит 2
		"Ликтор Вюстиг",
		"Так... стоп... Люстиг... я где-то уже слышал эту фамилию...",
		"Ну чтож... кредит одобрен (вместо страховки подсовываете обманку)",
		0, 0, +15, 0,
		+15, 0, -10, -20,
		"Random", "Random",
		"None",
		3],
		
	"MoneyPrinting" : 
		["Characters",
		"Mr. Bankman", 
		"У нас сломался станок, который печатает деньги! Починят его только завтра, а деньну нужно выдавать сегодня! Реши это!", #что говорит 2
		"Mr. Bankman",
		"Каким образом? Мне самому начать рисовать ббанкноты вручную!?",
		"Может мы всё же дождёмся завтра?",
		-7, 0, 0, 0,
		-14, 0, 0, 0,
		"MoneyPrinting1", "MoneyPrinting1",
		"None",
		3],
		
	"MoneyPrinting1" : 
		["Characters",
		"Mr. Bankman", 
		"У нас нет времени на твои шуточки! На сайте Центрального Банка можно скачать файл с банкнотами, а дальше испоьзую принтер! ЖИВО!", #что говорит 2
		"Mr. Bankman",
		"Блин... в погоде на выгодой тебя ничто не остановит, да?",
		"Наш принтер черно-белый... хотя кому я это говорю... сейчас напечатаю",
		0, 0, 0, 0,
		+20, 0, 0, +35,
		"Random", "Random",
		"None",
		3],
		
		
	"MrBankManScarySecret" : 
		["Characters",
		"Mr. Bankman", 
		"(Вы с презрением смотрите на вашего руководителя) Что тебе надо!?", #что говорит 2
		"Mr. Bankman",
		"Скажи, почему ты такой вредный?",
		"Быть может стоит быть помягче со своим персоналом?",
		+10, 0, 0, 0,
		+10, 0, 0, 0,
		"MrBankManScarySecret1", "MrBankManScarySecret1",
		"None",
		0],
		
	"MrBankManScarySecret1" : 
		["Characters",
		"Mr. Bankman", 
		"(Начал громко рыдать) О боже прости меня... это всё из-за воспитания моего отца! Он так жестоко обращался со мной!", #что говорит 2
		"Mr. Bankman",
		"Да ладно тебе... тихо тихо...",
		"Боже, что это чудовище сделало с тобой!?",
		0, 0, 0, 0,
		0, 0, 0, 0,
		"MrBankManScarySecret2", "MrBankManScarySecret2",
		"None",
		0],
		
	"MrBankManScarySecret2" : 
		["Characters",
		"Mr. Bankman", 
		"(Продолжает рыдать) Стоило мне в дестве попросить у него денег, он тутже спускался в подвал и печатал их для меня! Из-за него я деньгоман!", #что говорит 2
		"Mr. Bankman",
		"Какой же бред... ааа!? Тебе самому не смешно?",
		"Ооооо дааааа... травма всех травм...",
		0, 0, 0, 0,
		0, 0, 0, 0,
		"Random", "Random",
		"None",
		0],
		
	"CustomerLastWish" : 
		["Characters",
		"Dabygale Eonson", 
		"Мой муж умер и завещал, все заработанные им деньги положить к нему в гроб...", #что говорит 2
		"Дэбигейл Эонсон",
		"Примите мои искренние соболезнования",
		"Неужели он вам ни копецки не оставил!?",
		0, +8, 0, 0,
		0, +12, 0, 0,
		"CustomerLastWish1", "CustomerLastWish1",
		"None",
		13],
		
	"CustomerLastWish1" : 
		["Characters",
		"Dabygale Eonson", 
		"Ничего страшного, денег так много, что они не помещаются в гроб. Я хочу выписать ему чек", #что говорит 2
		"Дэбигейл Эонсон",
		"Вы конечно, хитрая, но распоряжаться чужими деньгами вам не позволено! Отказано!",
		"Он был вашем мужем, и вы наследница... я помогу оформить все бумаги",
		0, -12, 0, +24,
		0, +12, 0, +20,
		"Random", "Random",
		"None",
		13],
		
	"CreditProphetReturn" :
		["Characters",
		"Liktor Vustig", 
		"Я пришел за кредитом", #что говорит 2
		"Ликтор Вюстиг",
		"В нашей базе числится, что вы уже брали кредит. Когда вы его вернёте?",
		"Вы же закредитованы, но думаю ничего страшного если дадим вам ещё денег",
		+6, 0, +11, 0,
		-6, +7, -11, -10,
		"CreditProphetReturn1", "Random",
		"None",
		14],
		
	"CreditProphetReturn1" : 
		["Characters",
		"Liktor Vustig", 
		"Откуда я знаю!? Я что пророк? Так, что? Дадите мне ещё займ!? Вы рискуете потерять прибыльного клиента!", #что говорит 2
		"Ликтор Вюстиг",
		"Охаран! Задержите этого мерзавца и передайте полиции!",
		"Ну от ещё одного безнадёжного кредита банк не обеднеет... Одобрено.",
		+7, 0, +7, 0,
		-7, 0, -7, -14,
		"CreditProphetReturn2", "Random",
		"None",
		14],
		
	"CreditProphetReturn2" : 
		["Characters",
		"Bantonio Anderas", 
		"(Стукнул клиента дубинкой по шее) Я могу выбить из него деньги! Как минимум зубы у него золотые!", #что говорит 2
		"Бантонио Андерас",
		"Неет нет нет... просто передай его полиции",
		"Делай своё чёрное дело! Во славу Банка!",
		-11, 0, +5, 0,
		+17, 0, 0, +20,
		"Random", "Random",
		"None",
		0],
		
	"ErogenZone" : 
		["Characters",
		"Sanna Acol Nitt", 
		"Моя эрогенная зона - Ладошки! Кладёшь в каждую по 5 тысяч и я сразу вся такая ласковая, нежная, возбуждённая!", #что говорит 2
		"Санна Аколь Нитт",
		"Боюсь здесь вам ничего не светит... уходите",
		"У Mr.Bankman тажк проблема...",
		0, 0, 0, 0,
		0, 0, 0, 0,
		"Random", "Random",
		"None",
		0],
		
	"CantMeetMoney" :
		["Characters",
		"Darls Coy", 
		"Секрет богатства состоит в том, чтобы легко расставаться с деньгами.", #что говорит 2
		"Дарлс Коу",
		"Да, с ними встретится никак не могу!",
		"Оформлю кредит, и тут растрачу",
		-9, 0, 0, 0,
		+9, 0, 0, 0,
		"Random", "Random",
		"None",
		0],
		
	"CollectorsGuardians" :
		["Characters",
		"Crowley Shepard",
		"Куба должна вашему Банку 30 миллиардов долларов?", #что говорит 2
		"Кроули Шеппард",
		"Ничего об этом не знаю",
		"Да, и мы готовы понять и простить им долг",
		0, -5, 0, 0,
		0, +5, 0, 0,
		"CollectorsGuardians1", "CollectorsGuardians1",
		"None",
		15],
		
	"CollectorsGuardians1" :
		["Characters",
		"Crowley Shepard", 
		"Африка должна вам 20 миллиардов?", #что говорит 2
		"Кроули Шеппард",
		"Ничего об этом не знаю",
		"Они для нас как друзья, можем и это простить",
		0, -5, 0, 0,
		0, +5, 0, 0,
		"CollectorsGuardians2", "CollectorsGuardians2",
		"None",
		15],
		
	"CollectorsGuardians2" :
		["Characters",
		"Crowley Shepard", 
		"Америка должна вам 40 миллиардов долларов?", #что говорит 2
		"Кроули Шеппард",
		"Ну хватит уже",
		"Мы относимся с уважением к проблемам наших партнёров!",
		0, -5, 0, 0,
		0, +5, 0, 0,
		"CollectorsGuardians3", "CollectorsGuardians3",
		"None",
		15],
		
	"CollectorsGuardians3" :
		["Characters",
		"Crowley Shepard", 
		"Я клоню к тому... я, ветеран труда, и заслужанный врач, просрочил месячный платеж 150 долларов, по кредиту!", #что говорит 2
		"Кроули Шеппард",
		"Нуууу...",
		"Эмн...",
		0, 0, 0, -10,
		0, 0, 0, -10,
		"CollectorsGuardians4", "CollectorsGuardians4",
		"None",
		15],
		
	"CollectorsGuardians4" :
		["Characters",
		"Mr. Bankman", 
		"Коллекторы!!! Стража!!!! Схватить его!!!", #что говорит 2
		"Mr. Bankman",
		"Мне кажется, что это черезе чур...",
		"ДА! ХВАТАЙТЕ ЕГО!",
		-12, 0, -7, 0,
		+12, 0, +12, 0,
		"Random", "Random",
		"None",
		0],
		
	"DepositArgument" :
		["Characters",
		"Crowley Shepard", 
		"Я хочу взять у вас кредит! Инфляция полностью съела мои сбережения!", #что говорит 2
		"Кроули Шеппард",
		"Вынужден вам отказать. Вы проблемный клиент...",
		"Конечно! Что вы готовы оставить под залог?",
		0, -14, -7, 0,
		+12, 0, +12, 0,
		"DepositArgument1", "DepositArgument2",
		"None",
		1],
		
	"DepositArgument1" :
		["Characters",
		"Crowley Shepard", 
		"Что значит проблемный! У вас в банке сейчас находятся мои вложения, которые мне не отдают!", #что говорит 2
		"Кроули Шеппард",
		"Ваши средства под надёжной защитой, досвидания!",
		"Чтож, вы сразу не сказали? Сейчас дадим вам в кредит ваши деньги!",
		-12, 0, -7, 0,
		+12, 0, +12, 0,
		"Random", "Random",
		"None",
		15],
		
	"DepositArgument2" :
		["Characters",
		"Crowley Shepard", 
		"Какой ещё залог? Когда я отдавал вам свои деньги на сохранение, вы залог мне не предоставляли!", #что говорит 2
		"Кроули Шеппард",
		"Я же говорил, с вами и вашими деньгами сплошные проблемы!",
		"Приходите завтра! Мы что-нибудь придумаем",
		-12, 0, -7, 0,
		+12, 0, +12, 0,
		"Random", "Random",
		"None",
		15],
		
	"DepositArgument2" :
		["Characters",
		"Crowley Shepard", 
		"(Звон монет в мешке клиента) У меня есть небольшие накопления. Не знаете, куда сейчас лучше их вложить?", #что говорит 2
		"Кроули Шеппард",
		"Я же говорил, с вами и вашими деньгами сплошные проблемы!",
		"Приходите завтра! Мы что-нибудь придумаем",
		-12, 0, -7, 0,
		+12, 0, +12, 0,
		"Random", "Random",
		"None",
		15],
		
	"DepositArgument2" :
		["Characters",
		"Crowley Shepard", 
		"(Услышал звон монет, прибежал и говорит с отдышкой) Мой карман к вашим услугам СЭР!", #что говорит 2
		"Кроули Шеппард",
		"Я же говорил, с вами и вашими деньгами сплошные проблемы!",
		"Приходите завтра! Мы что-нибудь придумаем",
		-12, 0, -7, 0,
		+12, 0, +12, 0,
		"Random", "Random",
		"None",
		15],
		
		
	"Tutorial1" : 
		["Tutorial", #ссылка на папку персонажей 0
		"AlexeyKochanov", #кто говорит 1, портрет
		"Перетаскивай карточку влево/вправо, чтобы давать ответы", #что говорит 2
		"Лёха Кочанов", #Имя говорящего 3
		"Я знаю как играть", #Ответ на право 4 (НЕТ)
		"Хорошо, объясняй дальше", #ответ на лево 5 (ДА)
		0, #Ренессанс на право 6
		0, #Люди на право 7
		0, #ЦБ на право 8
		0, #Деньги на право 9
		0, #Ренессанс на лево 10
		0, #Люди на лево 11
		0, #ЦБ на лево 12
		0, #Деньги на лево 13
		"Tutorial2", #Следующая карта на право 14 (ДА)
		"Random", #Следующая карта на лево 15 (НЕТ)
		"None", #Карточный ивент
		"None"], #Игровое событие
	
	"Tutorial2" : 
		["Tutorial",
		"AlexeyKochanov", #кто говорит
		"Сохраняй баланс, чтобы удержаться на банковском рынке", #что говорит
		"Лёха Кочанов", #Имя говорящего
		"Я всё понял", #Ответ на лево
		"Какой баланс?", #ответ на право
		0, #Ренессанс на лево 6
		0, #Люди на лево 7
		0, #ЦБ на лево 8
		0, #Деньги на лево 9
		0, #Ренессанс на право 10
		0, #Люди на право 11
		0, #ЦБ на право 12
		0, #Деньги на право 13
		"Tutorial3",
		"Random",
		"None", #Карточный ивент
		"None"], #Игровое событие
	
	"Tutorial3" : 
		["Tutorial",
		"AlexeyKochanov", #кто говорит
		"4 показателя вверху. Нельзя опускать их до минимума и максимума", #что говорит
		"Лёха Кочанов", #Имя говорящего
		"Ок, я всё понял", #Ответ на лево
		"Что за показатели?", #ответ на право
		0, #Ренессанс на лево 6
		0, #Люди на лево 7
		0, #ЦБ на лево 8
		0, #Деньги на лево 9
		0, #Ренессанс на право 10
		0, #Люди на право 11
		0, #ЦБ на право 12
		0, #Деньги на право 13
		"Tutorial4",
		"Random",
		"None", #Карточный ивент
		"None"], #Игровое событие
	
	"Tutorial4" : 
		["Tutorial",
		"AlexeyKochanov", #кто говорит
		"Моральных дух банка,  отношение людей, отношение ЦБ и финансы", #что говорит
		"Лёха Кочанов", #Имя говорящего
		"Ну погнали", #Ответ на лево
		"Я всё понял. Я молодец!", #ответ на право
		0, #Ренессанс на лево 6
		0, #Люди на лево 7
		0, #ЦБ на лево 8
		0, #Деньги на лево 9
		0, #Ренессанс на право 10
		0, #Люди на право 11
		0, #ЦБ на право 12
		0, #Деньги на право 13
		"Random",
		"Random",
		"None", #Карточный ивент
		"None"], #Игровое событие
	
	"Random1" : 
		["Characters", #ссылка на папку персонажей 0
		"AnastasiyaMalkova", #кто говорит 1
		"Мне нужен кредит в 1'000'000. Отдам быстро", #что говорит 2
		"Анастасия (A+)", #Имя говорящего 3
		"Я, наверное, глупый. Но вам денег не дам", #Ответ на лево 4
		"Да, конечно. С фин защитой!", #ответ на право 5
		-10,
		-15,
		+15,
		0,
		+10,
		+10,
		-10,
		-20,
		"Random",
		"Random",
		"None", #Карточный ивент
		"None"], #Игровое событие
	
	"Random2" : 
		["Characters",
		"AnastasiyaCherevatkina", #кто говорит
		"Я просто мимо проходила, не обращай внимание", #что говорит
		"Анастасия (А)", #Имя говорящего
		"Попробовать кредитануть?", #Ответ на лево
		"Пропробовать жестко кредитануть. Под 50%", #ответ на право
		+10, #Ренессанс на лево 6
		+10, #Люди на лево 7
		-20, #ЦБ на лево 8
		0, #Деньги на лево 9
		+20, #Ренессанс на право 10
		-20, #Люди на право 11
		+15, #ЦБ на право 12
		0, #Деньги на право 13
		"Random2a",
		"Random2b",
		"None", #Карточный ивент
		"None"], #Игровое событие
		
	"Random2a" : 
		["Characters",
		"AnastasiyaCherevatkina", #кто говорит
		"500'000 под 10% говорите??? Дайте два!", #что говорит
		"Анастасия (А)", #Имя говорящего
		"Извините, наш Банк передумал. Тех трудности", #Ответ на лево
		"Конечно, берите! И фин. помощник в подарок", #ответ на право
		+15, #Ренессанс на лево 6
		+10, #Люди на лево 7
		-10, #ЦБ на лево 8
		-20, #Деньги на лево 9
		-20, #Ренессанс на право 10
		-10, #Люди на право 11
		+15, #ЦБ на право 12
		0, #Деньги на право 13
		"Random",
		"Random",
		"None", #Карточный ивент
		"None"], #Игровое событие
		
	"Random2b" : 
		["Characters",
		"AnastasiyaCherevatkina", #кто говорит
		"Охеренел!? Я тебя сама сейчас так кредитану!", #что говорит
		"Анастасия (А)", #Имя говорящего
		"Бежать...", #Ответ на лево
		"Убегать быстро!", #ответ на право
		-20, #Ренессанс на лево 6
		-20, #Люди на лево 7
		+20, #ЦБ на лево 8
		0, #Деньги на лево 9
		-10, #Ренессанс на право 10
		-10, #Люди на право 11
		-10, #ЦБ на право 12
		0, #Деньги на право 13
		"Random",
		"Random",
		"None", #Карточный ивент
		"None"], #Игровое событие
		
	"Random3" : 
		["Characters",
		"AlexeySilkin", #кто говорит
		"Мне нужна дебетовка. Желательно с бонусами", #что говорит
		"Алексей (A+)", #Имя говорящего
		"Предложить кредитку", #Ответ на лево
		"Выдать Drive/365", #ответ на право
		-15, #Ренессанс на лево 6
		+20, #Люди на лево 7
		0, #ЦБ на лево 8
		0, #Деньги на лево 9
		+20, #Ренессанс на право 10
		-15, #Люди на право 11
		+10, #ЦБ на право 12
		0, #Деньги на право 13
		"Random3a",
		"Random",
		"None", #Карточный ивент
		"None"], #Игровое событие
		
	"Random3a" : 
		["Characters",
		"AlexeySilkin", #кто говорит
		"Говорите кредита даёт больше свободы? Ну давайте...", #что говорит
		"Алексей (A+)", #Имя говорящего
		"Выдать кредитку и предложить GP", #Ответ на лево
		"Выдать ему только кредитку", #ответ на право
		-10, #Ренессанс на лево 6
		+10, #Люди на лево 7
		0, #ЦБ на лево 8
		-10, #Деньги на лево 9
		+20, #Ренессанс на право 10
		0, #Люди на право 11
		+20, #ЦБ на право 12
		-10, #Деньги на право 13
		"Random3b",
		"Random",
		"None", #Карточный ивент
		"None"], #Игровое событие
		
	"Random3b" : 
		["Characters",
		"AlexeySilkin", #кто говорит
		"Блин да хорош уже меня разводить! Я ухожу!", #что говорит
		"Алексей (A+)", #Имя говорящего
		"Если ты наш клиент, то ты вернёшься", #Ответ на лево
		"Извините, останьтесь. Я больше так не буду", #ответ на право
		-20, #Ренессанс на лево 6
		+15, #Люди на лево 7
		-20, #ЦБ на лево 8
		0, #Деньги на лево 9
		0, #Ренессанс на право 10
		-20, #Люди на право 11
		-20, #ЦБ на право 12
		0, #Деньги на право 13
		"Random3c",
		"Random",
		"None", #Карточный ивент
		"None"], #Игровое событие

	"Random3c" : 
		["Characters",
		"AlexeySilkin", #кто говорит
		"Ок", #что говорит
		"Алексей (A+)", #Имя говорящего
		"Ты купился на нашу ловушку! Муахаха", #Ответ на лево
		"Ну вот и славно", #ответ на право
		0, #Ренессанс на лево 6
		0, #Люди на лево 7
		0, #ЦБ на лево 8
		0, #Деньги на лево 9
		0, #Ренессанс на право 10
		0, #Люди на право 11
		0, #ЦБ на право 12
		0, #Деньги на право 13
		"Random",
		"Random",
		"None", #Карточный ивент
		"None"], #Игровое событие

	"Random4" : 
		["Characters",
		"Bman", #кто говорит
		"Никто не даёт мне кредит... на ремонт не хватает. Дадите?", #что говорит
		"Мужик с улицы (C)", #Имя говорящего
		"Простите, банк не может вам одобрить займ", #Ответ на лево
		"Ну коли мы последняя инстанция, держи под 35%", #ответ на право
		+10, #Ренессанс на лево 6
		+5, #Люди на лево 7
		0, #ЦБ на лево 8
		-15, #Деньги на лево 9
		-15, #Ренессанс на право 10
		0, #Люди на право 11
		+15, #ЦБ на право 12
		0, #Деньги на право 13
		"Random",
		"Random",
		"None", #Карточный ивент
		"None"], #Игровое событие

	"Random5" : 
		["Characters",
		"CBomjMan", #кто говорит
		"Привет! Я за баблом! хахахаха!!! Возвращать, конечно не буду xD", #что говорит
		"Бомж (BlackList)", #Имя говорящего
		"От вас воняет, уходите отсюда", #Ответ на лево
		"Да, сейчас оформим", #ответ на право
		-15, #Ренессанс на лево 6
		+20, #Люди на лево 7
		+20, #ЦБ на лево 8
		-15, #Деньги на лево 9
		+25, #Ренессанс на право 10
		-20, #Люди на право 11
		-20, #ЦБ на право 12
		0, #Деньги на право 13
		"Random5a",
		"Random5a",
		"None", #Карточный ивент
		"None"], #Игровое событие
		
	"Random5a" : 
		["Characters",
		"CBomjMan", #кто говорит
		"Я буду жаловаться в ЦБ! Сильно при сильно!", #что говорит
		"Бомж (BlackList)", #Имя говорящего
		"Хорошо... хорошо... вот деньги. Только уходи", #Ответ на лево
		"Ну и жалуйся. Удачи тебе!", #ответ на право
		+15, #Ренессанс на лево 6
		-15, #Люди на лево 7
		+20, #ЦБ на лево 8
		0, #Деньги на лево 9
		-20, #Ренессанс на право 10
		+20, #Люди на право 11
		0, #ЦБ на право 12
		0, #Деньги на право 13
		"Random",
		"Random",
		"None", #Карточный ивент
		"None"], #Игровое событие

	"Random6" : 
		["Characters", #ссылка на папку персонажей 0
		"DmitriyOvsyannikov", #кто говорит 1
		"Я пришел сюда за кредиткой. Больше ничего не предлагать!", #что говорит 2
		"Дмитрий (A+)", #Имя говорящего 3
		"Ну так не интересно!", #Ответ на лево 4
		"Кредитка, так кредитка", #ответ на право 5
		+10, #Ренессанс на лево 6
		+10, #Люди на лево 7
		-15, #ЦБ на лево 8
		-15, #Деньги на лево 9
		-20, #Ренессанс на право 10
		-20, #Люди на право 11
		0, #ЦБ на право 12
		0, #Деньги на право 13
		"Random", #Следующая карта на лево
		"Random",
		"None", #Карточный ивент
		"None"], #Игровое событие

	"Random7" : 
		["Characters",
		"Chechen", #кто говорит
		"В вашАм Панке у меня есть кредиДка. ХАчу втАрАя братан", #что говорит
		"Марио (BlackList)", #Имя говорящего
		"Стоп... больше одной кредитки мы не выдаём!", #Ответ на лево
		"Без проблем организуем вам наш продукт", #ответ на право
		+10, #Ренессанс на лево 6
		+15, #Люди на лево 7
		+15, #ЦБ на лево 8
		-20, #Деньги на лево 9
		0, #Ренессанс на право 10
		0, #Люди на право 11
		0, #ЦБ на право 12
		0, #Деньги на право 13
		"Random",
		"Random",
		"None", #Карточный ивент
		"None"], #Игровое событие

	"Random8" : 
		["Characters",
		"BArtem", #кто говорит
		"Мне пришла СМС о том, что одобрена кредитная карта", #что говорит
		"Артём (B)", #Имя говорящего
		"Приходите завтра. Система барахлит", #Ответ на лево
		"Да, держите кредитку", #ответ на право
		+15, #Ренессанс на лево 6
		0, #Люди на лево 7
		0, #ЦБ на лево 8
		-15, #Деньги на лево 9
		-10, #Ренессанс на лево 6
		-15, #Люди на лево 7
		0, #ЦБ на лево 8
		-15, #Деньги на лево 9
		"Random",
		"Random",
		"None", #Карточный ивент
		"None"], #Игровое событие

	"Random9" : 
		["Characters",
		"KristinaStepanova", #кто говорит
		"Хочу положить деньги на депозит. 400'000.", #что говорит
		"Кристина", #Имя говорящего
		"Извините, но наш банк переполнен", #Ответ на лево
		"Да, давайте откроем вам счет", #ответ на право
		+10, #Ренессанс на лево 6
		+15, #Люди на лево 7
		0, #ЦБ на лево 8
		+25, #Деньги на лево 9
		-10, #Ренессанс на лево 6
		-20, #Люди на лево 7
		0, #ЦБ на лево 8
		0, #Деньги на лево 9
		"Random",
		"Random",
		"None", #Карточный ивент
		"None"], #Игровое событие

	"Random10" : 
		["Characters",
		"Babylia", #кто говорит
		"Я принесла 10'000 на депозит. Через год накопится мильён?", #что говорит
		"Бабуля со Стамбула", #Имя говорящего
		"Мне жаль вас расстраивать... но...", #Ответ на лево
		"Конечно! Даже два!", #ответ на право
		+10, #Ренессанс на лево 6
		+10, #Люди на лево 7
		+20, #ЦБ на лево 8
		+20, #Деньги на лево 9
		-15, #Ренессанс на право 10
		-15, #Люди на право 11
		0, #ЦБ на право 12
		0, #Деньги на право 13
		"Random",
		"Random",
		"None", #Карточный ивент
		"None"], #Игровое событие

	"Random11" : 
		["Characters", #ссылка на папку персонажей 0
		"IlonMask", #кто говорит 1
		"Я принес немного денег на депозит. Где разгрузить грузовик?", #что говорит 2
		"IlonMask", #Имя говорящего 3
		"Банк не в состоянии принять ваши дары, извините", #Ответ на лево 4
		"Подкатите машину к заднему ходу", #ответ на право 5
		+10, #Ренессанс на лево 6
		0, #Люди на лево 7
		-5, #ЦБ на лево 8
		+40, #Деньги на лево 9
		-10, #Ренессанс на право 10
		0, #Люди на право 11
		+5, #ЦБ на право 12
		0, #Деньги на право 13
		"Random", #Следующая карта на лево
		"Random",
		"None", #Карточный ивент
		"None"], #Игровое событие

	"Random12" : 
		["Characters",
		"Mafiosi", #кто говорит
		"За мной гонятся! Быстрее возьмите деньги на сохранение!", #что говорит
		"Подозрительный тип", #Имя говорящего
		"Стоп. А кто за вами гонится?", #Ответ на лево
		"С удовольствием швыряйте в кассира сумку!", #ответ на право
		-10, 0, -10, 0,
		+20, 0, +30, +20,
		"Random",
		"Random",
		"None", #Карточный ивент
		"None"], #Игровое событие

	"Random13" : 
		["Characters",
		"GrishaGrachev", #кто говорит
		"Хочу открыть брокерский счет", #что говорит
		"Григорий (А+)", #Имя говорящего
		"Конечно, сейчас откроем", #Ответ на лево
		"Откроем! Вас кредитануть дополнительно?", #ответ на право
		+5, #Ренессанс на лево 6
		0, #Люди на лево 7
		+10, #ЦБ на лево 8
		0, #Деньги на лево 9
		0, #Ренессанс на право 10
		+15, #Люди на право 11
		-10, #ЦБ на право 12
		0, #Деньги на право 13
		"Random13a",
		"Random",
		"None", #Карточный ивент
		"None"], #Игровое событие
		
	"Random13a" : 
		["Characters",
		"GrishaGrachev", #кто говорит
		"Нет, спасибо. Только брокерский счет", #что говорит
		"Григорий (А+)", #Имя говорящего
		"Ну не хотите, дело ваше", #Ответ на лево
		"Извините, я вас уже кредитанул под 10% на 1'000'000", #ответ на право
		+20, #Ренессанс на лево 6
		-10, #Люди на лево 7
		0, #ЦБ на лево 8
		-20, #Деньги на лево 9
		-20, #Ренессанс на право 10
		+15, #Люди на право 11
		+20, #ЦБ на право 12
		0, #Деньги на право 13
		"Random13b",
		"Random",
		"None", #Карточный ивент
		"None"], #Игровое событие
		
	"Random13b" : 
		["Characters",
		"GrishaGrachev", #кто говорит
		"СКОЛЬКО??? Ладно... проинвестируем. Спасибо", #что говорит
		"Григорий (А+)", #Имя говорящего
		"Удачных покупок", #Ответ на лево
		"Удачных инвестиций", #ответ на право
		0, #Ренессанс на лево 6
		+10, #Люди на лево 7
		0, #ЦБ на лево 8
		0, #Деньги на лево 9
		0, #Ренессанс на право 10
		+10, #Люди на право 11
		0, #ЦБ на право 12
		0, #Деньги на право 13
		"Random",
		"Random",
		"None", #Карточный ивент
		"None"], #Игровое событие
		
	"Random14" : 
		["Characters",
		"BitKogan", #кто говорит
		"Я бы потестил брокерские услуги и написал обзор", #что говорит
		"BitKogan", #Имя говорящего
		"Чтобы ты нас обосрал? Ну уж нет!", #Ответ на право
		"Сейчас откроем вам счет", #ответ на лево
		+10, #Ренессанс на лево 6
		-20, #Люди на лево 7
		0, #ЦБ на лево 8
		0, #Деньги на лево 9
		-10, #Ренессанс на право 10
		0, #Люди на право 11
		+20, #ЦБ на право 12
		0, #Деньги на право 13
		"Random",
		"Random",
		"None", #Карточный ивент
		"None"], #Игровое событие
		
	"Random15" : 
		["Characters",
		"InvestorJunior", #кто говорит
		"Откройте мне брокерский счет пожалуйста. Я близок к богатству!", #что говорит
		"InvestorJunior", #Имя говорящего
		"Размечтался...", #Ответ на лево
		"Конечно! Ренессанс Верит в вас!", #ответ на право
		+20, #Ренессанс на лево 6
		+20, #Люди на лево 7
		0, #ЦБ на лево 8
		+20, #Деньги на лево 9
		-10, #Ренессанс на право 10
		-10, #Люди на право 11
		0, #ЦБ на право 12
		0, #Деньги на право 13
		"Random",
		"Random",
		"None", #Карточный ивент
		"None"], #Игровое событие

	"Random16" : 
		["Characters",
		"OstapBender", #кто говорит
		"Я опытны инвестор. Раскрою банку секреты... за плату", #что говорит
		"Бендер (BlackList)", #Имя говорящего
		"Какой-то ты подозрительный...", #Ответ на лево
		"Ну, чтож мы не против подзаработать", #ответ на право
		-20, #Ренессанс на лево 6
		0, #Люди на лево 7
		+15, #ЦБ на лево 8
		-20, #Деньги на лево 9
		0, #Ренессанс на право 10
		0, #Люди на право 11
		-15, #ЦБ на право 12
		0, #Деньги на право 13
		"Random",
		"Random",
		"None", #Карточный ивент
		"None"], #Игровое событие
		
	"Random17" : 
		["Characters",
		"OlegTinkoff", #кто говорит
		"Мой Банк разорился. Дайте денег на покупку телека, плиз", #что говорит
		"Олег (A+)", #Имя говорящего
		"Не выдержал конкуренции с нашим банком?", #Ответ на лево
		"Олеж, конечно дадим друг", #ответ на право
		0, #Ренессанс на лево 6
		-25, #Люди на лево 7
		0, #ЦБ на лево 8
		0, #Деньги на лево 9
		0, #Ренессанс на право 10
		0, #Люди на право 11
		0, #ЦБ на право 12
		0, #Деньги на право 13
		"Random17a",
		"Random",
		"None", #Карточный ивент
		"None"], #Игровое событие
		
	"Random17a" : 
		["Characters",
		"OlegTinkoff", #кто говорит
		"Да. Ваш Банк разорил мой. Дайте денег... плиз", #что говорит
		"Олег (A+)", #Имя говорящего
		"Обойдёсся", #Ответ на лево
		"Да, конечно дадим", #ответ на право
		+5, #Ренессанс на лево 6
		+25, #Люди на лево 7
		-5, #ЦБ на лево 8
		-20, #Деньги на лево 9
		0, #Ренессанс на право 10
		0, #Люди на право 11
		+20, #ЦБ на право 12
		0, #Деньги на право 13
		"Random",
		"Random",
		"None", #Карточный ивент
		"None"], #Игровое событие
		
	"Random18" : 
		["Characters",
		"BillGates", #кто говорит
		"Никогда не брал кредиты. Хочу купить чайник. Займёте?", #что говорит
		"Билл (A)", #Имя говорящего
		"Билл!? Что случилось?", #Ответ на лево
		"Да, конечно", #ответ на право
		0, #Ренессанс на лево 6
		+10, #Люди на лево 7
		0, #ЦБ на лево 8
		0, #Деньги на лево 9
		+10, #Ренессанс на право 10
		0, #Люди на право 11
		0, #ЦБ на право 12
		-10, #Деньги на право 13
		"Random18a",
		"Random",
		"None", #Карточный ивент
		"None"], #Игровое событие
		
	"Random18a" : 
		["Characters",
		"BillGates", #кто говорит
		"Да, ничего. Просто дурью маюсь", #что говорит
		"Билл (A)", #Имя говорящего
		"Ок, сейчас оформим", #Ответ на лево
		"Одну минутку и кредит ваш", #ответ на право
		+10, #Ренессанс на лево 6
		0, #Люди на лево 7
		0, #ЦБ на лево 8
		0, #Деньги на лево 9
		+10, #Ренессанс на право 10
		0, #Люди на право 11
		0, #ЦБ на право 12
		-10, #Деньги на право 13
		"Random",
		"Random",
		"None", #Карточный ивент
		"None"], #Игровое событие
		
	"Random19" : 
		["Characters",
		"Putin", #кто говорит
		"Некогда объяснять. Срочно нужны деньги на диван", #что говорит
		"Володя (A+++)", #Имя говорящего
		"Слушаюсь", #Ответ на лево
		"Слушаюсь", #ответ на право
		+10, #Ренессанс на лево 6
		-10, #Люди на лево 7
		-20, #ЦБ на лево 8
		-20, #Деньги на лево 9
		+10, #Ренессанс на право 10
		-10, #Люди на право 11
		-20, #ЦБ на право 12
		-10, #Деньги на право 13
		"Random",
		"Random",
		"None", #Карточный ивент
		"None"], #Игровое событие
	
	"Random20" : 
		["Characters",
		"MegaBomj", #кто говорит
		"Я сейчас выбью из вас деньги себе на машину!!!", #что говорит
		"МегаБомж (Z---)", #Имя говорящего
		"Охрана выведите этого джнтельмена", #Ответ на лево
		"Я выдам тебе кредит, но больше не приходи плиз", #ответ на право
		0, #Ренессанс на лево 6
		-10, #Люди на лево 7
		-10, #ЦБ на лево 8
		0, #Деньги на лево 9
		+10, #Ренессанс на право 10
		0, #Люди на право 11
		0, #ЦБ на право 12
		-20, #Деньги на право 13
		"Random",
		"Random",
		"None", #Карточный ивент
		"None"], #Игровое событие
		
	"Random21" : 
		["Characters",
		"RomanShabanov", #кто говорит
		"Мне нужен кредит на хату. Дома не одобряют", #что говорит
		"Парень из Эстонии", #Имя говорящего
		"Лиц из Эстонии не обслуживаем", #Ответ на лево
		"Конечно, под 12% годовых", #ответ на право
		0, #Ренессанс на лево 6
		+10, #Люди на лево 7
		0, #ЦБ на лево 8
		0, #Деньги на лево 9
		0, #Ренессанс на право 10
		-10, #Люди на право 11
		0, #ЦБ на право 12
		0, #Деньги на право 13
		"Random21a",
		"Random",
		"None", #Карточный ивент
		"None"], #Игровое событие
	
	"Random21a" : 
		["Characters",
		"RomanShabanov", #кто говорит
		"эээй а что так много... В европе дешевле!", #что говорит
		"Парень из Эстонии", #Имя говорящего
		"Ну у нас Россия! Большая страна, большие %ты", #Ответ на лево
		"Ну сорян братан...", #ответ на право
		0, #Ренессанс на лево 6
		0, #Люди на лево 7
		0, #ЦБ на лево 8
		0, #Деньги на лево 9
		0, #Ренессанс на право 10
		0, #Люди на право 11
		0, #ЦБ на право 12
		0, #Деньги на право 13
		"Random",
		"Random",
		"None", #Карточный ивент
		"None"], #Игровое событие
		
	"Random22" : 
		["Characters",
		"CBreviewer", #кто говорит
		"Покажите отчетность за прошлый квартал", #что говорит
		"Ревизор из ЦБ", #Имя говорящего
		"Мы пришлем его по готовности", #Ответ на лево
		"Конечо, держите", #ответ на право
		0, #Ренессанс на лево 6
		0, #Люди на лево 7
		-20, #ЦБ на лево 8
		0, #Деньги на лево 9
		0, #Ренессанс на право 10
		0, #Люди на право 11
		0, #ЦБ на право 12
		0, #Деньги на право 13
		"Ivent",
		"Random",
		"CentralBankDice1", #Карточный ивент
		"None"], #Игровое событие
		
	"Random23" : 
		["Characters",
		"IlonMask", #кто говорит
		"Пришел журналист. Ответишь ему на пару вопросов?", #что говорит
		"Мишель. Маркетинг", #Имя говорящего
		"Нет, уж увольте...", #Ответ на лево
		"Конечо, мне есть что рассказать", #ответ на право
		-10, #Ренессанс на лево 6
		-10, #Люди на лево 7
		0, #ЦБ на лево 8
		0, #Деньги на лево 9
		0, #Ренессанс на право 10
		0, #Люди на право 11
		0, #ЦБ на право 12
		0, #Деньги на право 13
		"Random",
		"Ivent",
		"MiniCardMix1", #Карточный ивент
		"None"], #Игровое событие
		
	"Random24" : 
		["Characters",
		"RomanShabanov", #кто говорит
		"Прошлый квартал оказался не прибыльным. Придётся понизить всем зарплату", #что говорит
		"Главный бухгалтер", #Имя говорящего
		"Нет, я не пожертвую благополучием команды", #Ответ на лево
		"Эх... ок!", #ответ на право
		0, #Ренессанс на лево 6
		5, #Люди на лево 7
		-10, #ЦБ на лево 8
		-25, #Деньги на лево 9
		0, #Ренессанс на право 10
		0, #Люди на право 11
		0, #ЦБ на право 12
		0, #Деньги на право 13
		"StatusScreen",
		"Random",
		"TeamDown", #Карточный ивент
		"None"], #Игровое событие
		
	"Random25" : 
		["Characters",
		"MegaBomj", #кто говорит
		"Предлагаю вложить деньги вкладчиков в акции. Центробанку это не понравится, но мы сможем заработать", #что говорит
		"Шон, Брокер", #Имя говорящего
		"На это я пойти не могу", #Ответ на лево
		"Ладно, рискнём", #ответ на право
		-10, #Ренессанс на лево 6
		+15, #Люди на лево 7
		+20, #ЦБ на лево 8
		0, #Деньги на лево 9
		0, #Ренессанс на право 10
		0, #Люди на право 11
		0, #ЦБ на право 12
		0, #Деньги на право 13
		"StatusScreen",
		"Random",
		"CustomersUp", #Карточный ивент
		"None"], #Игровое событие
		
	"Random26" : 
		["Characters",
		"Putin", #кто говорит
		"Предлагаю, повысить ставку по кредитам на время. Это дост дополнительные средства", #что говорит
		"Джоф, аналитик", #Имя говорящего
		"Нет, Центральному Банку это не понравится", #Ответ на лево
		"Похоже у нас нет выбора...", #ответ на право
		+5, #Ренессанс на лево 6
		-5, #Люди на лево 7
		+5, #ЦБ на лево 8
		-10, #Деньги на лево 9
		0, #Ренессанс на право 10
		0, #Люди на право 11
		0, #ЦБ на право 12
		0, #Деньги на право 13
		"StatusScreen",
		"Random",
		"MoneyUp", #Карточный ивент
		"None"], #Игровое событие
		
	"Random27" : 
		["Characters",
		"AnastasiyaCherevatkina", #кто говорит
		"Если одобрите мне кредит? Я могу улучшить репутацию банка", #что говорит
		"Парень со связями", #Имя говорящего
		"Нет, правила есть правила", #Ответ на лево
		"Держи и делай свою магию", #ответ на право
		-10, #Ренессанс на лево 6
		-15, #Люди на лево 7
		-20, #ЦБ на лево 8
		0, #Деньги на лево 9
		0, #Ренессанс на право 10
		0, #Люди на право 11
		+10, #ЦБ на право 12
		-20, #Деньги на право 13
		"StatusScreen",
		"Random",
		"CentralBankDown", #Карточный ивент
		"None"], #Игровое событие
		
	"Random28" : 
		["Characters",
		"IlonMask", #кто говорит
		"Начало нового рабочего дня. Скажете речь для команды Банка?", #что говорит
		"Мишель. Маркетинг", #Имя говорящего
		"Пинок под зад, лучшая мотивация", #Ответ на лево
		"Я готов вдохновить команду", #ответ на право
		-25, #Ренессанс на лево 6
		0, #Люди на лево 7
		0, #ЦБ на лево 8
		0, #Деньги на лево 9
		0, #Ренессанс на право 10
		0, #Люди на право 11
		0, #ЦБ на право 12
		0, #Деньги на право 13
		"Ivent",
		"Random",
		"MiniCardMix2", #Карточный ивент
		"None"], #Игровое событие
		
	"Random29" : 
		["Characters",
		"OstapBender", #кто говорит
		"Подскажите пожалуйста, как мне перевести деньги на счет сына?", #что говорит
		"Клиет на телефоне", #Имя говорящего
		"Не могу вам помочь...", #Ответ на лево
		"Сейчас расскажу как это можно сделать", #ответ на право
		0, #Ренессанс на лево 6
		0, #Люди на лево 7
		-10, #ЦБ на лево 8
		-10, #Деньги на лево 9
		0, #Ренессанс на право 10
		0, #Люди на право 11
		0, #ЦБ на право 12
		0, #Деньги на право 13
		"Ivent",
		"Random",
		"Pendulum1", #Карточный ивент
		"None"], #Игровое событие
		
	"Random30" : 
		["Characters",
		"CBreviewer", #кто говорит
		"К нам пришел наш инвестор. Его визиты вызывают непредсказуемые вещи", #что говорит
		"Энтони", #Имя говорящего
		"Отвлеки его на себя", #Ответ на лево
		"Да пусть ходит. Что может случится?", #ответ на право
		0, #Ренессанс на лево 6
		0, #Люди на лево 7
		-20, #ЦБ на лево 8
		0, #Деньги на лево 9
		0, #Ренессанс на право 10
		0, #Люди на право 11
		0, #ЦБ на право 12
		0, #Деньги на право 13
		"Ivent",
		"Random",
		"Roulette1", #Карточный ивент
		"None"], #Игровое событие
		
	"Random31" : 
		["Characters",
		"IlonMask", #кто говорит
		"Клиент заказал кредитную карту с доставкой на дом. Ты в деле?", #что говорит
		"Бауэрр, из логистики", #Имя говорящего
		"Нет! Я вам, что курьер?", #Ответ на лево
		"Ни слова больше!", #ответ на право
		0, #Ренессанс на лево 6
		-20, #Люди на лево 7
		0, #ЦБ на лево 8
		0, #Деньги на лево 9
		0, #Ренессанс на право 10
		0, #Люди на право 11
		0, #ЦБ на право 12
		0, #Деньги на право 13
		"Ivent",
		"Random",
		"CardDelivery1", #Карточный ивент
		"None"], #Игровое событие
		
	"TeamUp" : 
		["StatusScreen", #ссылка на папку персонажей 0
		"TeamUp", #кто говорит 1
		"Дух Банка растет. Многие устраиваются к вам на работу", #что говорит 2
		"Рост Банка", #Имя говорящего 3
		" ", #Ответ на лево 4
		" ", #ответ на право 5
		0, #Ренессанс на лево 6
		0, #Люди на лево 7
		0, #ЦБ на лево 8
		0, #Деньги на лево 9
		0, #Ренессанс на право 10
		0, #Люди на право 11
		0, #ЦБ на право 12
		0, #Деньги на право 13
		"Random",
		"Random",
		"TeamUp", #Карточный ивент
		"None"], #Игровое событие
		
	"CustomersUp" : 
		["StatusScreen", #ссылка на папку персонажей 0
		"CustomersUp", #кто говорит 1
		"О Банке ходят хорошие слухи. Осторожно, радостные клиенты - это тоже опастность", #что говорит 2
		"В лучах славы", #Имя говорящего 3
		" ", #Ответ на лево 4
		" ", #ответ на право 5
		0, #Ренессанс на лево 6
		0, #Люди на лево 7
		0, #ЦБ на лево 8
		0, #Деньги на лево 9
		0, #Ренессанс на право 10
		0, #Люди на право 11
		0, #ЦБ на право 12
		0, #Деньги на право 13
		"Random",
		"Random",
		"CustomersUp", #Карточный ивент
		"None"], #Игровое событие
		
	"CentralBankUp" : 
		["StatusScreen", #ссылка на папку персонажей 0
		"CentralBankUp", #кто говорит 1
		"Ваши действия вызвали черезу проверок в Банке. Обстановка накаляется", #что говорит 2
		"Большой Брат не дремлет", #Имя говорящего 3
		" ", #Ответ на лево 4
		" ", #ответ на право 5
		0, #Ренессанс на лево 6
		0, #Люди на лево 7
		0, #ЦБ на лево 8
		0, #Деньги на лево 9
		0, #Ренессанс на право 10
		0, #Люди на право 11
		0, #ЦБ на право 12
		0, #Деньги на право 13
		"Random",
		"Random",
		"CentralBankUp", #Карточный ивент
		"None"], #Игровое событие
		
	"MoneyUp" : 
		["StatusScreen", #ссылка на папку персонажей 0
		"MoneyUp", #кто говорит 1
		"Деньги идут в Банк сами. Распоряжайтесь ими грамотно. Успех не вечен.", #что говорит 2
		"Головокружение от успехов", #Имя говорящего 3
		" ", #Ответ на лево 4
		" ", #ответ на право 5
		0, #Ренессанс на лево 6
		0, #Люди на лево 7
		0, #ЦБ на лево 8
		0, #Деньги на лево 9
		0, #Ренессанс на право 10
		0, #Люди на право 11
		0, #ЦБ на право 12
		0, #Деньги на право 13
		"Random",
		"Random",
		"MoneyUp", #Карточный ивент
		"None"], #Игровое событие
		
	"TeamDown" : 
		["StatusScreen", #ссылка на папку персонажей 0
		"TeamDown", #кто говорит 1
		"Ваши действия привели к падению морального духа в Банке", #что говорит 2
		"Массовые увольнения", #Имя говорящего 3
		" ", #Ответ на лево 4
		" ", #ответ на право 5
		0, #Ренессанс на лево 6
		0, #Люди на лево 7
		0, #ЦБ на лево 8
		0, #Деньги на лево 9
		0, #Ренессанс на право 10
		0, #Люди на право 11
		0, #ЦБ на право 12
		0, #Деньги на право 13
		"Random",
		"Random",
		"TeamDown", #Карточный ивент
		"None"], #Игровое событие
		
	"TeamDownFullDay" : 
		["StatusScreen", #ссылка на папку персонажей 0
		"TeamDown", #кто говорит 1
		"Все коллеги злобно смотрят на вас... старайтесь никого не раздражать...", #что говорит 2
		"Внутренний голос", #Имя говорящего 3
		" ", #Ответ на лево 4
		" ", #ответ на право 5
		0, #Ренессанс на лево 6
		0, #Люди на лево 7
		0, #ЦБ на лево 8
		0, #Деньги на лево 9
		0, #Ренессанс на право 10
		0, #Люди на право 11
		0, #ЦБ на право 12
		0, #Деньги на право 13
		"Random",
		"Random",
		"TeamDownFullDay", #Карточный ивент
		"None"], #Игровое событие
		
	"CustomersDown" : 
		["StatusScreen", #ссылка на папку персонажей 0
		"CustomersDown", #кто говорит 1
		"Чтобы вы не сделалиб, клиентам это не нравится. О вас говорят негативно", #что говорит 2
		"Дурная репутация", #Имя говорящего 3
		" ", #Ответ на лево 4
		" ", #ответ на право 5
		0, #Ренессанс на лево 6
		0, #Люди на лево 7
		0, #ЦБ на лево 8
		0, #Деньги на лево 9
		0, #Ренессанс на право 10
		0, #Люди на право 11
		0, #ЦБ на право 12
		0, #Деньги на право 13
		"Random",
		"Random",
		"CustomersDown", #Карточный ивент
		"None"], #Игровое событие
		
	"CentralBankDown" : 
		["StatusScreen", #ссылка на папку персонажей 0
		"CentralBankDown", #кто говорит 1
		"Центральный Банк теряет интерес к вашему Банку. Это хорошо?", #что говорит 2
		"Игра по правилам", #Имя говорящего 3
		" ", #Ответ на лево 4
		" ", #ответ на право 5
		0, #Ренессанс на лево 6
		0, #Люди на лево 7
		0, #ЦБ на лево 8
		0, #Деньги на лево 9
		0, #Ренессанс на право 10
		0, #Люди на право 11
		0, #ЦБ на право 12
		0, #Деньги на право 13
		"Random",
		"Random",
		"CentralBankDown", #Карточный ивент
		"None"], #Игровое событие
		
	"MoneyDown" : 
		["StatusScreen", #ссылка на папку персонажей 0
		"MoneyDown", #кто говорит 1
		"Ваша активность ведет к постоянным тратам. Казна уменьшается", #что говорит 2
		"Финансовые расходы", #Имя говорящего 3
		" ", #Ответ на лево 4
		" ", #ответ на право 5
		0, #Ренессанс на лево 6
		0, #Люди на лево 7
		0, #ЦБ на лево 8
		0, #Деньги на лево 9
		0, #Ренессанс на право 10
		0, #Люди на право 11
		0, #ЦБ на право 12
		0, #Деньги на право 13
		"Random",
		"Random",
		"MoneyDown", #Карточный ивент
		"None"], #Игровое событие
		
		
	"LooseTopHealth" : 
		["LooseScreen", #ссылка на папку персонажей 0
		"LooseTopHealth", #кто говорит 1
		"Банк стал слишком уверенным в себе и нанял кучу сотрудников", #что говорит 2
		"В Банке бардак", #Имя говорящего 3
		" ", #Ответ на лево 4
		" ", #ответ на право 5
		0, #Ренессанс на лево 6
		0, #Люди на лево 7
		0, #ЦБ на лево 8
		0, #Деньги на лево 9
		0, #Ренессанс на право 10
		0, #Люди на право 11
		0, #ЦБ на право 12
		0, #Деньги на право 13
		"Random",
		"Random",
		"None", #Карточный ивент
		0], #Игровое событие
		
	"LooseBottomHealth" : 
		["LooseScreen", #ссылка на папку персонажей 0
		"LooseBottomHealth", #кто говорит 1
		"Сотрудники потеряли веру в Банк", #что говорит 2
		"Все уволились", #Имя говорящего 3
		" ", #Ответ на лево 4
		" ", #ответ на право 5
		0, #Ренессанс на лево 6
		0, #Люди на лево 7
		0, #ЦБ на лево 8
		0, #Деньги на лево 9
		0, #Ренессанс на право 10
		0, #Люди на право 11
		0, #ЦБ на право 12
		0, #Деньги на право 13
		"Random",
		"Random",
		"None", #Карточный ивент
		0], #Игровое событие
	
	"LooseTopLaw" : 
		["LooseScreen", #ссылка на папку персонажей 0
		"LooseTopLaw", #кто говорит 1
		"В офис ринулась толпа радостных клиентов. Банк лопнул от потока людей", #что говорит 2
		"Слишком сильная любовь", #Имя говорящего 3
		" ", #Ответ на лево 4
		" ", #ответ на право 5
		0, #Ренессанс на лево 6
		0, #Люди на лево 7
		0, #ЦБ на лево 8
		0, #Деньги на лево 9
		0, #Ренессанс на право 10
		0, #Люди на право 11
		0, #ЦБ на право 12
		0, #Деньги на право 13
		"Random",
		"Random",
		"None", #Карточный ивент
		0], #Игровое событие
		
	"LooseBottomLaw" : 
		["LooseScreen", #ссылка на папку персонажей 0
		"LooseBottomLaw", #кто говорит 1
		"Ваш Банк нигде не любят. Клиенты закрыли все счета", #что говорит 2
		"Банк загнулся", #Имя говорящего 3
		" ", #Ответ на лево 4
		" ", #ответ на право 5
		0, #Ренессанс на лево 6
		0, #Люди на лево 7
		0, #ЦБ на лево 8
		0, #Деньги на лево 9
		0, #Ренессанс на право 10
		0, #Люди на право 11
		0, #ЦБ на право 12
		0, #Деньги на право 13
		"Random",
		"Random",
		"None", #Карточный ивент
		0], #Игровое событие
	
	"LooseTopBanditism" : 
		["LooseScreen", #ссылка на папку персонажей 0
		"LooseTopBanditism", #кто говорит 1
		"Вы слишком заметны для ЦБ. Вас взяли под контроль", #что говорит 2
		"Под властью ЦБ", #Имя говорящего 3
		" ", #Ответ на лево 4
		" ", #ответ на право 5
		0, #Ренессанс на лево 6
		0, #Люди на лево 7
		0, #ЦБ на лево 8
		0, #Деньги на лево 9
		0, #Ренессанс на право 10
		0, #Люди на право 11
		0, #ЦБ на право 12
		0, #Деньги на право 13
		"Random",
		"Random",
		"None", #Карточный ивент
		0], #Игровое событие
		
	"LooseBottomBanditism" : 
		["LooseScreen", #ссылка на папку персонажей 0
		"LooseBottomBanditism", #кто говорит 1
		"Вы не светитесь перед ЦБ. ЦБ решил, что Банк не эффективен", #что говорит 2
		"Отзыв лицензии", #Имя говорящего 3
		" ", #Ответ на лево 4
		" ", #ответ на право 5
		0, #Ренессанс на лево 6
		0, #Люди на лево 7
		0, #ЦБ на лево 8
		0, #Деньги на лево 9
		0, #Ренессанс на право 10
		0, #Люди на право 11
		0, #ЦБ на право 12
		0, #Деньги на право 13
		"Random",
		"Random",
		"None", #Карточный ивент
		0], #Игровое событие
		
	"LooseTopLuck" : 
		["LooseScreen", #ссылка на папку персонажей 0
		"LooseTopLuck", #кто говорит 1
		"Ваш Банк затопило деньгами. Все погибли", #что говорит 2
		"Потоп бабла", #Имя говорящего 3
		" ", #Ответ на лево 4
		" ", #ответ на право 5
		0, #Ренессанс на лево 6
		0, #Люди на лево 7
		0, #ЦБ на лево 8
		0, #Деньги на лево 9
		0, #Ренессанс на право 10
		0, #Люди на право 11
		0, #ЦБ на право 12
		0, #Деньги на право 13
		"Random",
		"Random",
		"None", #Карточный ивент
		0], #Игровое событие
		
	"LooseBottomLuck" : 
		["LooseScreen", #ссылка на папку персонажей 0
		"LooseBottomLuck", #кто говорит 1
		"Деньги закончились. Банку не на что существовать", #что говорит 2
		"Банкрот", #Имя говорящего 3
		" ", #Ответ на лево 4
		" ", #ответ на право 5
		0, #Ренессанс на лево 6
		0, #Люди на лево 7
		0, #ЦБ на лево 8
		0, #Деньги на лево 9
		0, #Ренессанс на право 10
		0, #Люди на право 11
		0, #ЦБ на право 12
		0, #Деньги на право 13
		"Random",
		"Random",
		"None", #Карточный ивент
		0], #Игровое событие
		
	"Ivent" : 
		["Ivent", #ссылка на папку персонажей 0
		"Ivent", #кто говорит 1
		" ", #что говорит 2
		" ", #Имя говорящего 3
		" ", #Ответ на лево 4
		" ", #ответ на право 5
		0, #Ренессанс на лево 6
		0, #Люди на лево 7
		0, #ЦБ на лево 8
		0, #Деньги на лево 9
		0, #Ренессанс на право 10
		0, #Люди на право 11
		0, #ЦБ на право 12
		0, #Деньги на право 13
		"Random",
		"Random",
		"None", #Карточный ивент
		0], #Игровое событие
		
	"EventResult" : 
		["EventResult", #ссылка на папку персонажей 0
		" ", #кто говорит 1
		" ", #что говорит 2
		" ", #Имя говорящего 3
		" ", #Ответ на лево 4
		" ", #ответ на право 5
		0, #Ренессанс на лево 6
		0, #Люди на лево 7
		0, #ЦБ на лево 8
		0, #Деньги на лево 9
		0, #Ренессанс на право 10
		0, #Люди на право 11
		0, #ЦБ на право 12
		0, #Деньги на право 13
		"Random",
		"Random",
		"None", #Карточный ивент
		0], #Игровое событие
	}
