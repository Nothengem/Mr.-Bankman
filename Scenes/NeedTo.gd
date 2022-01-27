extends TextureRect


func _ready():
	pass # Replace with function body.

func answer_update():
	$Label.text = str(Scriptwriter.dossierBankRlationPurpose[Scriptwriter.WhatFor])

func hide_need_to():
	visible = false
