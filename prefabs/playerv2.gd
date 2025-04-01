extends Sprite2D

var dra = false
var ofs = Vector2(0,0)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if dra == true:
		position = get_global_mouse_position() - ofs


func _on_button_button_down() -> void:
	dra = true
	ofs = get_global_mouse_position() - global_position


func _on_button_button_up() -> void:
	dra = false
