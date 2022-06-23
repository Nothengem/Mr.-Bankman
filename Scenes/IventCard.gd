extends NinePatchRect

func cardupdate():
	$CardTextCont/CardText.text = Scriptwriter.CardText
	$CharNameCont/CharacterName.text = Scriptwriter.CardName
	$CardTextCont/RichTextLabel.bbcode_text = "[center]" + Scriptwriter.CardText + "[/center]"

func cardupdate_dice():
	print("dice вызвался")
	$CardTextCont/RichTextLabel.bbcode_text = "[center]" + "Для прохождения проверки, нужно выкинуть " + str(Scriptwriter.dice_to_win) + " или выше" + "[/center]"
	$CharNameCont/CharacterName.text = " "
	
	
func cardupdate_pendulum():
	$CardTextCont/CardText.text = "Красный - плохо, синий - нормально, жёлтый - блитательно"
	$CharNameCont/CharacterName.text = " "
	
func cardupdate_ivent_win():
	$CardTextCont/RichTextLabel.bbcode_text = Scriptwriter.IventInfo[7]
	$CharNameCont/CharacterName.text = " "
	
func cardupdate_ivent_lose():
	$CardTextCont/CardText.text = Scriptwriter.IventInfo[2]
	$CharNameCont/CharacterName.text = " "

func cardupdate_all_text_hide():
	$CardTextCont/CardText.text =  " "
	$CharNameCont/CharacterName.text = " "
