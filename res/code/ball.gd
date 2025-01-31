extends Node2D

var mover : bool
var mopos : Vector2 = Vector2.ZERO
var modif : Vector2

func _on_mouse_entered() -> void:
	mover = true


func _on_mouse_exited() -> void:
	mover = false

func _process(delta: float) -> void:
	modif = mopos - get_global_mouse_position()
	
	if Input.is_action_pressed("lclick") and mover and modif!= Vector2.ZERO:
		global_position -= modif
	
	mopos = get_global_mouse_position()
