extends Node

enum {
	MrBankman, Dictor, AlexeyKochanov, AnastasiyaMalkova, AnastasiyaCherevatkina, AlexeySilkin, Bman, CBomjMan,
	DmitriyOvsyannikov, Chechen, BArtem, KristinaStepanova, Babylia, IlonMask, Mafiosi, GrishaGrachev,
	BitKogan, InvestorJunior, OstapBender, OlegTinkoff, BillGates, Putin, MegaBomj, RomanShabanov,
	CBreviewer, Ivent, Status, ShihaelMumaher,

	TeamUp, CustomersUp, CentralBankUp, MoneyUp,
	TeamDown, CustomersDown, CentralBankDown, MoneyDown

	}

# 	Голова0, Шея1, Куртка2, Брови3, Глаза4, Лоб5, Уши6, Щеки7, Очки8, Рот9, Волосы10, Нос11


const DATA = { 
	"Mr. Bankman": [ 10, 1, 11, 12, 7, 1, 7, 0, 1, 4, 10, 16],
	"Sill Fpencer": [ 7, 1, 1, 1, 2, 0, 6, 0, 0, 7, 13, 13],
	"Getty Green" : [ 4, 1, 5, 2, 10, 1, 4, 3, 1, 11, 14, 5],
	"Cark Mukerberg" : [ 8, 1, 9, 15, 4, 0, 10, 0, 0, 2, 4, 9],
	"Borren Uaffet" : [ 4, 1, 4, 4, 4, 2, 4, 0, 1, 3, 0, 8],
	"Liktor Vustig" : [ 3, 1, 8, 6, 6, 2, 9, 0, 0, 4, 6, 6],
	"Kikolas Nage" : [ 6, 1, 13, 11, 5, 0, 2, 0, 0, 7, 6, 5],
	"Bichard Ranson" : [ 10, 1, 4, 15, 14, 1, 3, 0, 1, 4, 4, 9],
	"Mjack Da" : [ 1, 1, 15, 5, 17, 0, 5, 0, 0, 1, 1, 3],
	"El'Fa" : [ 6, 1, 2, 1, 11, 0, 4, 2, 0, 9, 11, 9],
	"Dabygale Eonson" : [ 13, 1, 14, 12, 16, 1, 3, 1, 1, 6, 14, 10],
	"Crowley Shepard" : [ 8, 1, 11, 12, 2, 2, 1, 0, 0, 2, 6, 10],
	"Sanna Acol Nitt" : [ 8, 1, 13, 8, 15, 0, 1, 2, 0, 8, 8, 4],
	"Darls Coy" : [ 5, 1, 7, 6, 1, 0, 8, 0, 0, 6, 1, 8],
	"Bantonio Anderas" : [ 9, 1, 7, 1, 4, 1, 5, 0, 0, 1, 6, 15],
	"Barlo Cenetton" : [7, 1, 14, 11, 12, 1, 3, 3, 1, 14, 5, 4],
	"Shihael Mumaher" : [3, ],
	
	"BitKogan" : [ 1, 1, 2, 2, 1, 0, 3, 1, 0, 1, 0, 1],

	"InvestorJunior" : [ 2, 1, 1, 1, 2, 0, 2, 0, 0, 2, 1, 1],

	"OstapBender" : [ 3, 1, 2, 2, 3, 0, 1, 1, 0, 3, 2, 1],

	"OlegTinkoff" : [ 4, 1, 3, 3, 4, 0, 1, 0, 0, 4, 3, 3],

	"BillGates" : [ 5, 1, 4, 4, 5, 0, 2, 1, 1, 5, 4, 3],

	"Putin" : [ 1, 1, 5, 5, 1, 1, 3, 0, 0, 5, 0, 3],

	"MegaBomj" : [ 2, 1, 4, 4, 2, 0, 3, 1, 0, 4, 1, 2],

	"RomanShabanov" : [ 3, 1, 3, 3, 3, 0, 2, 0, 0, 3, 2, 2],

	"CBreviewer" : [ 4, 1, 2, 2, 4, 1, 1, 1, 1, 2, 3, 2],

	"Ivent" : [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],

	"Status" : [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],

	"TeamUp" : [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],

	"CustomersUp" : [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],

	"CentralBankUp" : [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],

	"MoneyUp" : [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],

	"TeamDown" : [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],

	"CustomersDown" : [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],

	"CentralBankDown" : [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],

	"MoneyDown" : [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0],

}
