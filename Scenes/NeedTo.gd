extends TextureRect


func _ready():
	pass # Replace with function body.

func answer_update():
	print(Scriptwriter.CardChoose)
	print(Scriptwriter.WhatFor)
	print(str(Scriptwriter.dossierBankRlationPurpose[Scriptwriter.WhatFor]))
	$Label.text = str(Scriptwriter.dossierBankRlationPurpose[Scriptwriter.WhatFor])

func hide_need_to():
	print("ggoooood")
	visible = false
