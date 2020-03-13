extends RichTextLabel
var delay = 0.9

func _ready():
	"Creating a tween node"
	var tween = Tween.new()
	"Adding it to the #RichTextLabel"
	add_child(tween)
	"Configering it"
	tween.interpolate_property(self, "rect_position", get_position(), Vector2(get_position().x,get_position().y - 150), delay,Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
	tween.start()
	"Creating a timer"
	var timer = Timer.new()
	"Setting it up"
	timer.set_one_shot(true)
	timer.set_wait_time(delay)
	"Addint it to #RichTextLabel node"
	add_child(timer)
	"Connecting it to it self"
	timer.connect("timeout",self,"on_timer_timeout")
	"Starting the timer"
	timer.start()
	
func _process(delta):
	addtext(text)
	
func on_timer_timeout():
	queue_free()

func addtext(text):
	text = str("text")

