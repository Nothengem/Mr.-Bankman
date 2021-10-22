extends Node

enum { 
	MrBankman, Dictor, AlexeyKochanov, AnastasiyaMalkova, AnastasiyaCherevatkina, AlexeySilkin, Bman, CBomjMan,
	DmitriyOvsyannikov, Chechen, BArtem, KristinaStepanova, Babylia, IlonMask, Mafiosi, GrishaGrachev, 
	BitKogan, InvestorJunior, OstapBender, OlegTinkoff, BillGates, Putin, MegaBomj, RomanShabanov, 
	CBreviewer, Ivent, Status,
	
	TeamUp, CustomersUp, CentralBankUp, MoneyUp, 
	TeamDown, CustomersDown, CentralBankDown, MoneyDown
	
	}

const DATA = {
	#Руководитель игрока и владелец Банка. Любит только деньги
	"Mr. Bankman": [ "Head10", "Neck1", "Shirt11", "Eyebrows12", "Eyes7", "Forehead1", "Ears7", "Jowls10", "Glasses1", "Mouth4", "Hair10", "Nose16"],
	#Успешный молодой человек, который использует деньги с умом
	"Sill Fpencer": [ "Head7", "Neck1", "Shirt1", "Eyebrows1", "Eyes2", "Forehead0", "Ears6", "Jowls0", "Glasses0", "Mouth7", "Hair13", "Nose13"],
	#не очень удачливая и вечно залазиет в долги, но успешно оплачивает их. Может махинации?
	"Getty Green" : [ "Head4", "Neck1", "Shirt5", "Eyebrows2", "Eyes10", "Forehead1", "Ears4", "Jowls3", "Glasses1", "Mouth11", "Hair14", "Nose5"],
	#амбициозный юноша, который берёт деньги на своё собственное развитие
	"Cark Mukerberg" : [ "Head8", "Neck1", "Shirt9", "Eyebrows15", "Eyes4", "Forehead0", "Ears10", "Jowls0", "Glasses0", "Mouth2", "Hair4", "Nose9"],
	#не молодой человек, опытнфй инвестор понимающий во что вкладывать деньги. Прибедняется
	"Borren Uaffet" : [ "Head4", "Neck1", "Shirt4", "Eyebrows4", "Eyes4", "Forehead2", "Ears4", "Jowls0", "Glasses1", "Mouth3", "Hair0", "Nose8"],
	#второсортный аферист, который проворачивает махинации со всем краденным и незаконным
	"Liktor Vustig" : [ "Head3", "Neck1", "Shirt8", "Eyebrows6", "Eyes6", "Forehead2", "Ears9", "Jowls0", "Glasses0", "Mouth4", "Hair6", "Nose6"],
	#семьянин, вроде не бедный но не умеет управлять финансами
	"Kikolas Nage" : [ "Head6", "Neck1", "Shirt13", "Eyebrows11", "Eyes5", "Forehead0", "Ears2", "Jowls0", "Glasses0", "Mouth7", "Hair6", "Nose5"],
	
	"CBomjMan" : [ "Head2", "Neck1", "Shirt3", "Eyebrows3", "Eyes2", "Forehead0", "Ears1", "Jowls0", "Glasses0", "Mouth2", "Hair1", "Nose1"],
	
	"DmitriyOvsyannikov" : [ "Head3", "Neck1", "Shirt2", "Eyebrows2", "Eyes3", "Forehead0", "Ears2", "Jowls1", "Glasses0", "Mouth3", "Hair2", "Nose1"],
	
	"Chechen" : [ "Head4", "Neck1", "Shirt1", "Eyebrows1", "Eyes4", "Forehead0", "Ears3", "Jowls0", "Glasses0", "Mouth4", "Hair3", "Nose1"],
	
	"BArtem" : [ "Head5", "Neck1", "Shirt2", "Eyebrows2", "Eyes5", "Forehead0", "Ears3", "Jowls1", "Glasses0", "Mouth5", "Hair4", "Nose3"],
	
	"KristinaStepanova" : [ "Head1", "Neck1", "Shirt3", "Eyebrows3", "Eyes3", "Forehead0", "Ears2", "Jowls0", "Glasses1", "Mouth5", "Hair0", "Nose3"],
	
	"Babylia" : [ "Head2", "Neck1", "Shirt4", "Eyebrows4", "Eyes2", "Forehead0", "Ears1", "Jowls1", "Glasses0", "Mouth4", "Hair1", "Nose3"],
	
	"IlonMask" : [ "Head3", "Neck1", "Shirt5", "Eyebrows5", "Eyes3", "Forehead0", "Ears1", "Jowls0", "Glasses0", "Mouth3", "Hair2", "Nose2"],
	
	"Mafiosi" : [ "Head4", "Neck1", "Shirt4", "Eyebrows4", "Eyes4", "Forehead0", "Ears2", "Jowls1", "Glasses0", "Mouth2", "Hair3", "Nose2"],
	
	"GrishaGrachev" : [ "Head5", "Neck1", "Shirt3", "Eyebrows3", "Eyes5", "Forehead1", "Ears3", "Jowls0", "Glasses1", "Mouth1", "Hair4", "Nose2"],
	
	"BitKogan" : [ "Head1", "Neck1", "Shirt2", "Eyebrows2", "Eyes1", "Forehead0", "Ears3", "Jowls1", "Glasses0", "Mouth1", "Hair0", "Nose1"],
	
	"InvestorJunior" : [ "Head2", "Neck1", "Shirt1", "Eyebrows1", "Eyes2", "Forehead0", "Ears2", "Jowls0", "Glasses0", "Mouth2", "Hair1", "Nose1"],
	
	"OstapBender" : [ "Head3", "Neck1", "Shirt2", "Eyebrows2", "Eyes3", "Forehead0", "Ears1", "Jowls1", "Glasses0", "Mouth3", "Hair2", "Nose1"],
	
	"OlegTinkoff" : [ "Head4", "Neck1", "Shirt3", "Eyebrows3", "Eyes4", "Forehead0", "Ears1", "Jowls0", "Glasses0", "Mouth4", "Hair3", "Nose3"],
	
	"BillGates" : [ "Head5", "Neck1", "Shirt4", "Eyebrows4", "Eyes5", "Forehead0", "Ears2", "Jowls1", "Glasses1", "Mouth5", "Hair4", "Nose3"],
	
	"Putin" : [ "Head1", "Neck1", "Shirt5", "Eyebrows5", "Eyes1", "Forehead1", "Ears3", "Jowls0", "Glasses0", "Mouth5", "Hair0", "Nose3"],
	
	"MegaBomj" : [ "Head2", "Neck1", "Shirt4", "Eyebrows4", "Eyes2", "Forehead0", "Ears3", "Jowls1", "Glasses0", "Mouth4", "Hair1", "Nose2"],
	
	"RomanShabanov" : [ "Head3", "Neck1", "Shirt3", "Eyebrows3", "Eyes3", "Forehead0", "Ears2", "Jowls0", "Glasses0", "Mouth3", "Hair2", "Nose2"],
	
	"CBreviewer" : [ "Head4", "Neck1", "Shirt2", "Eyebrows2", "Eyes4", "Forehead1", "Ears1", "Jowls1", "Glasses1", "Mouth2", "Hair3", "Nose2"],
	
	"Ivent" : [ "Head0", "Neck0", "Shirt0", "Eyebrows0", "Eyes0", "Forehead0", "Ears0", "Jowls0", "Glasses0", "Mouth0", "Hair0", "Nose0"],
	
	"Status" : [ "Head0", "Neck0", "Shirt0", "Eyebrows0", "Eyes0", "Forehead0", "Ears0", "Jowls0", "Glasses0", "Mouth0", "Hair0", "Nose0"],
	
	"TeamUp" : [ "Head0", "Neck0", "Shirt0", "Eyebrows0", "Eyes0", "Forehead0", "Ears0", "Jowls0", "Glasses0", "Mouth0", "Hair0", "Nose0"],
	
	"CustomersUp" : [ "Head0", "Neck0", "Shirt0", "Eyebrows0", "Eyes0", "Forehead0", "Ears0", "Jowls0", "Glasses0", "Mouth0", "Hair0", "Nose0"],
	
	"CentralBankUp" : [ "Head0", "Neck0", "Shirt0", "Eyebrows0", "Eyes0", "Forehead0", "Ears0", "Jowls0", "Glasses0", "Mouth0", "Hair0", "Nose0"],
	
	"MoneyUp" : [ "Head0", "Neck0", "Shirt0", "Eyebrows0", "Eyes0", "Forehead0", "Ears0", "Jowls0", "Glasses0", "Mouth0", "Hair0", "Nose0"],
	
	"TeamDown" : [ "Head0", "Neck0", "Shirt0", "Eyebrows0", "Eyes0", "Forehead0", "Ears0", "Jowls0", "Glasses0", "Mouth0", "Hair0", "Nose0"],
	
	"CustomersDown" : [ "Head0", "Neck0", "Shirt0", "Eyebrows0", "Eyes0", "Forehead0", "Ears0", "Jowls0", "Glasses0", "Mouth0", "Hair0", "Nose0"],
	
	"CentralBankDown" : [ "Head0", "Neck0", "Shirt0", "Eyebrows0", "Eyes0", "Forehead0", "Ears0", "Jowls0", "Glasses0", "Mouth0", "Hair0", "Nose0"],
	
	"MoneyDown" : [ "Head0", "Neck0", "Shirt0", "Eyebrows0", "Eyes0", "Forehead0", "Ears0", "Jowls0", "Glasses0", "Mouth0", "Hair0", "Nose0"],

}
 
