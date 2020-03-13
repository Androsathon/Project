extends Control
onready var colorrect = $ColorRect
var delay = 0.9
var screenx = ProjectSettings.get_setting("display/window/size/width") + 10

 
func _ready():
	animatein()

func _process(delta):
	pass
func animatein():
	var tween = Tween.new()
	colorrect.add_child(tween)
	"Configering it"
	tween.interpolate_property(self, "rect_position", get_position(), Vector2(get_position().x + screenx,get_position().y), delay,Tween.TRANS_CUBIC, Tween.EASE_IN_OUT)
	tween.start()

func _on_Back_pressed():
	queue_free()
