extends ColorRect

func _process(_delta):
	"Moving the Transition in the center"
	rect_position = Vector2(0,0)
	"Adjucting the size of the transition to match the window size"

	rect_size.x = ProjectSettings.get_setting("display/window/size/width") 
	rect_size.y = ProjectSettings.get_setting("display/window/size/height") 



func _on_AnimationPlayer_animation_finished(anim_name):
	Global.startgame = true
	queue_free()
