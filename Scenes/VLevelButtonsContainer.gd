extends Control

onready var tween = $Tween
onready var thisnode = $"."
onready var horizontalScroll = thisnode.scroll_horizontal


#$".scroll_horizontal"

func _ready():
	get_tree().call_group("LevelChooseButtons", "prepare_buttons")
	


func _on_Previouspage_pressed():
	if thisnode.scroll_horizontal != 0:
		tween.interpolate_property(thisnode, "scroll_horizontal", 
		thisnode.scroll_horizontal, thisnode.scroll_horizontal - 905, 
		0.7, tween.TRANS_CUBIC, Tween.EASE_OUT)
		tween.start()

func _on_NextPage_pressed():
	if thisnode.scroll_horizontal != 2714:
		tween.interpolate_property(thisnode, "scroll_horizontal", 
		thisnode.scroll_horizontal, thisnode.scroll_horizontal + 905, 
		0.7, tween.TRANS_CUBIC, Tween.EASE_OUT)
		tween.start()
