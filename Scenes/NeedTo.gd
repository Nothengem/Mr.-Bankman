extends TextureRect


func _ready():
	pass # Replace with function body.

func answer_update():
	$Label.text = Scriptwriter.WhatFor

func hide_need_to():
	print("ggoooood")
	visible = false
