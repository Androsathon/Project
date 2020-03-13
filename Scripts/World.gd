extends Node2D

func _ready():
	"Instance the transition and start animation"
	transitioninstance()


func _process(delta):
	if Input.is_key_pressed(KEY_ESCAPE):
		var popup = preload("res://Escape.tscn")
		var popup_instance = popup.instance()
		popup_instance.rect_position.x = ProjectSettings.get_setting("display/window/size/width") / 2
		popup_instance.rect_position.y = ProjectSettings.get_setting("display/window/size/height") / 2
		$CanvasLayer.add_child(popup_instance)



func transitioninstance():
	var Transition = preload("res://Transition.tscn")
	var Transition_Instance = Transition.instance()
	add_child(Transition_Instance)
	"Creating a timer in order to make it look better"
	var timer = Timer.new()
	"Setting it up"
	timer.set_one_shot(true)
	timer.set_wait_time(0.3)
	"Connecting the timer"
	timer.connect("timeout", self, "on_transition_timeout")
	"Starting the timer"
	timer.start()
	"Adding the timer to the scene"
	add_child(timer)



func on_transition_timeout():
	"Player Transition's animation"
	$Transition/AnimationPlayer.play("Transin")
	
func labelpopup():
	var label = preload("res://Labelpopup.tscn")
	var label_instance = label.instance()

	add_child(label_instance)

