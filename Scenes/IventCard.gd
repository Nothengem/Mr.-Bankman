extends NinePatchRect

func cardupdate():
	$CardTextCont/CardText.text = Scriptwriter.CardText
	$CharNameCont/CharacterName.text = Scriptwriter.CardName
	$CardTextCont/RichTextLabel.text = Scriptwriter.CardText

func cardupdate_dice():
	$CardTextCont/CardText.text = "Для прохождения проверки, нужно выкинуть " + str(Scriptwriter.dice_to_win) + " или выше"
	$CharNameCont/CharacterName.text = " "
	
func cardupdate_pendulum():
	$CardTextCont/CardText.text = "Красный - плохо, синий - нормально, жёлтый - блитательно"
	$CharNameCont/CharacterName.text = " "
	
func cardupdate_ivent_win():
	$CardTextCont/CardText.text = Scriptwriter.IventInfo[7]
	$CharNameCont/CharacterName.text = " "
	
func cardupdate_ivent_lose():
	$CardTextCont/CardText.text = Scriptwriter.IventInfo[2]
	$CharNameCont/CharacterName.text = " "

func cardupdate_all_text_hide():
	$CardTextCont/CardText.text =  " "
	$CharNameCont/CharacterName.text = " "
