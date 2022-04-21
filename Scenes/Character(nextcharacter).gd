extends Sprite

var anim_playing_once

func ready():
	anim_playing_once = false
	$AnimationPlayer.play("IdleOne")


func return_eyes():
	$Character/FullHead/Eyes.texture = Scriptwriter.CharacterEyes



func _on_AnimationCooldown_timeout():
	anim_playing_once = true


func _on_LeftChooseRect_resized():
	if anim_playing_once:
		$AnimationPlayer.play("IdleOne")
		$AnimationPlayer.stop()
		$LeftReaControl.play("LeftReacton")
		anim_playing_once = false
		$AnimationCooldown.start()
	elif !anim_playing_once:
		$AnimationPlayer.play("IdleOne")

func _on_RightChooseRect_resized():
	if anim_playing_once:
		$AnimationPlayer.play("IdleOne")
		$AnimationPlayer.stop()
		$RightReaControl.play("RightReacton")
		anim_playing_once = false
		$AnimationCooldown.start()
	elif !anim_playing_once:
		$AnimationPlayer.play("IdleOne")

