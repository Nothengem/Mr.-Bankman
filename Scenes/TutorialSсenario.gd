extends AnimationPlayer


func _ready():
	pass # Replace with function body.


func levelOneScenario():
	
	if str(Scriptwriter.CardChoose) == "TutorLev1Card1":
		.play("CardMechanicExplane")
	elif str(Scriptwriter.CardChoose) == "TutorLev1Card2":
		stopAnimations()
	elif str(Scriptwriter.CardChoose) == "TutorLev1Card3":
		.play("BalanceExplane")
	elif str(Scriptwriter.CardChoose) == "TutorLev1Card31":
		stopAnimations()
		.play("WorkingDaY")
		
func stopAnimations():
	.seek(0.00, true)
	.stop()


