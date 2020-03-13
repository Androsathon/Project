extends Node2D


func _ready():
	pass



func towerspawns():
	"preload the scene"
	var tower1 = preload("res://Tower.tscn")
	"instance it"
	var tower1_instance = tower1.instance()
	tower1_instance.rect_position = Vector2(500,600)

	
	"adding it to the child"
	add_child(tower1_instance)

func _on_Button_pressed():
	towerspawns()
