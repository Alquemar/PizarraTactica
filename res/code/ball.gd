extends Node2D

var mover : bool
var mopos : Vector2 = Vector2.ZERO
var modif : Vector2
var follo : bool = false

func _on_mouse_entered() -> void:
	mover = true


func _on_mouse_exited() -> void:
	mover = false

func _process(delta: float) -> void:
	modif = mopos - get_global_mouse_position()
	
	if follo == false:
		if Input.is_action_pressed("lclick") and mover == true:
			follo = true
	else:
		global_position -= modif
		if Input.is_action_pressed("lclick"):
			follo = false
		
	mopos = get_global_mouse_position()
