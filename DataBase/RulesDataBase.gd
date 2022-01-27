extends Node

enum { 
	StandartRule
	}

const DATA = {
	"SpisokVsego": #ключ:
		[["Мужской", "Женский"], #[пол(Финансы), список разрешенных
		21, 65, #возраст (Банк), разрешенный диапазон
		["Russia", "France", "Germany", "England", "Italy", "Spain", "USA", "China", "Japan", "UAE", "Africa", "India"], #страна(Банк и Финансы) запрещено
		"Хорошая", #история(Финансы) только такие клиенты
		"Чист", #лист(Банк) только такие клиенты
		["Высокий", "Средний"], #кредитный рейтинг(Финансы) только такие клиенты
		["На инвестиции"], #запрет на работу с такими клиентами
		],
	"LVL0": [["Женщины"], 21, 65, ["England", "India"], "Средняя", "Чист", ["Низкий"], ["На инвестиции"],],
	"LVL1": [false, false, false, false, false, false, false, false], #выбор
	"LVL2": [false, false, false, false, false, false, false, ["На инвестиции"]], #спрашивать
	"LVL3": [false, false, false, false, false, false, false, ["На инвестиции"]], #коллеги вниз
	"LVL4": [null, null, null, null, null, null, null, null,], #сверять фото и имя
	"LVL5": [["Женщины"], null, null, null, null, null, null, null,], #спрашивать
	"LVL6": [null, 0, 0, null, null, null, null, null,], #доставка
	"LVL7": [null, 0, 0, null, null, null, null, null,], #клиенты вниз
	"LVL8": [null, 0, 0, null, null, null, null, null,], #пол
	"LVL9": [null, 0, 0, null, null, null, null, null,], #ЦБ вниз
	"LVL10": [null, 0, 0, null, null, null, null, null,], #страна
	"LVL11": [null, 0, 0, null, null, null, null, null,], #кости
	"LVL12": [null, 0, 0, null, null, null, null, null,], #деньги вниз
	"LVL13": [null, 0, 0, null, null, null, null, null,], #история
	"LVL14": [null, 0, 0, null, null, null, null, null,], #черный лист
	"LVL15": [null, 0, 0, null, null, null, null, null,], #кредитный рейтинг
	"LVL16": [null, 0, 0, null, null, null, null, null,], #перетасовка
	"LVL17": [null, 0, 0, null, null, null, null, null,], #коллеги вверх
	"LVL18": [null, 0, 0, null, null, null, null, null,], #цель
	"LVL19": [null, 0, 0, null, null, null, null, null,], #страна
	"LVL20": [null, 0, 0, null, null, null, null, null,], #клиенты вверх
	"LVL21": [null, 0, 0, null, null, null, null, null,], #маятник
	"LVL22": [null, 0, 0, null, null, null, null, null,], #ЦБ вверх
	"LVL23": [null, 0, 0, null, null, null, null, null,], #возраст + рейтинг
	"LVL24": [null, 0, 0, null, null, null, null, null,], #черный лист
	"LVL25": [null, 0, 0, null, null, null, null, null,], #страны
	"LVL26": [null, 0, 0, null, null, null, null, null,], #рулетка
	"LVL27": [null, 0, 0, null, null, null, null, null,], #деньги вниз
	"LVL28": [null, 0, 0, null, null, null, null, null,], #пол и возраст
	"LVL29": [null, 0, 0, null, null, null, null, null,], #страна и рейтинг
	"LVL30": [null, 0, 0, null, null, null, null, null,], #только 3 страны
	"LVL31": [null, 0, 0, null, null, null, null, null,], #рост клиентов
	"LVL32": [null, 0, 0, null, null, null, null, null,], #всё вниз и все механики
	"LVL33": [null, 0, 0, null, null, null, null, null,], #бесконечная игра
}
 

#	"LVL3": ["Нет правил"],
#	"LVL4": ["Сверять фото и имя клиента"],
#	"LVL5": ["Сверять фото и имя клиента, работаем только с женщинами"],
#	"LVL6": ["Сверять фото и имя клиента, возраст от 20 до 70"],
#	"LVL7": ["Сверять фото и имя клиента, возраст от 20 до 70, не из АШС"],
#	"LVL8": ["Сверять фото и имя клиента, возраст от 20 до 70, с хорошей финансовой историей"],
#	"LVL9": ["Сверять фото и имя клиента, возраст от 20 до 70, с любой кредитной историей, не в черном списке"],
#	"LVL10": ["Сверять фото и имя клиента, возраст от 20 до 70, работаем только с мужчинами, с любой кредитной историей"],
#	"LVL11": ["Сверять фото и имя клиента, возраст от 30 до 70, с любой кредитной историей"],
#	"LVL12": ["Сверять фото и имя клиента, возраст от 20 до 70, не из Низкобритании или Индаи, с любой кредитной историей"],
#	"LVL13": ["Сверять фото и имя клиента, возраст от 20 до 70, с хорошей финансовой историей"],
#	"LVL14": ["Сверять фото и имя клиента, возраст от 20 до 70, с любой кредитной историей"],
#	"LVL15": ["Сверять фото и имя клиента, работаем только с женщинами, с любой кредитной историей"],
#	"LVL16": ["Сверять фото и имя клиента, возраст от 20 до 50, с любой кредитной историей"],
#	"LVL17": ["Сверять фото и имя клиента, возраст от 20 до 70, не из Спани или Южная Морея или Джафонии, с любой кредитной историей"],
#	"LVL18": ["Сверять фото и имя клиента, возраст от 20 до 70, с хорошей финансовой историей"],
#	"LVL19": ["Сверять фото и имя клиента, возраст от 20 до 70, с любой кредитной историей"],
#	"LVL20": ["Сверять фото и имя клиента, работаем только с мужчинами, с любой кредитной историей"],
#	"LVL21": ["Сверять фото и имя клиента, возраст от 25 до 60, с любой кредитной историей"],
#	"LVL22": ["Сверять фото и имя клиента, возраст от 20 до 70 не из Чины или Фефифета или Гранада или Эрмании, с любой кредитной историей"],
#	"LVL23": ["Сверять фото и имя клиента, возраст от 20 до 70, с хорошей финансовой историей"],
#	"LVL24": ["Сверять фото и имя клиента, возраст от 20 до 70, с любой кредитной историей"],
#	"LVL25": ["Сверять фото и имя клиента, работаем только с женщинами, с любой кредитной историей"],
#	"LVL26": ["Сверять фото и имя клиента, возраст от 30 до 60, с любой кредитной историей"],
#	"LVL27": ["Сверять фото и имя клиента, возраст от 20 до 70, не из Рутии или Гриса или Бранзили, с любой кредитной историей"],
#	"LVL28": ["Сверять фото и имя клиента, возраст от 20 до 70, с хорошей финансовой историей"],
#	"LVL29": ["Сверять фото и имя клиента, возраст от 20 до 70, с любой кредитной историей"],
#	"LVL30": ["Сверять фото и имя клиента, работаем только с женщинами, с любой кредитной историей"],
#	"LVL31": ["Сверять фото и имя клиента, возраст от 30 до 50, с любой кредитной историей"],
#	"LVL32": ["Сверять фото и имя клиента, возраст от 20 до 70 не из Авунстралия или Южная Юфринка или Старой Зеландия, с любой кредитной историей"],
#	"LVL33": ["Сверять фото и имя клиента, возраст от 20 до 70 не из АШС или Спани или Чины или Эрмания или Рутии, с хорошей финансовой историей"],
