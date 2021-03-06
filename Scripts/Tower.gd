extends TextureRect
var towersprite = preload("res://Sprites/Towers/icon.png")
var mouse_in = false
var dragging = false

func _ready():
	set_texture(towersprite)
func _process(delta):
	if (mouse_in && Input.is_action_pressed("left_click")):
		dragging = true
	if (dragging && Input.is_action_pressed("left_click")):
		var position = get_global_mouse_position()
		
		set_position(position)
	else:
		dragging = false


func _on_Area2D_mouse_entered():
	mouse_in = true


func _on_Area2D_mouse_exited():
	mouse_in = false
