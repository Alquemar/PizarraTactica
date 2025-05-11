extends Node
var file = "c://new_json.json"
var json_as_text = FileAccess.get_file_as_string(file)
var json_as_dict = JSON.parse_string(json_as_text)

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	if json_as_dict:
		print(json_as_dict)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
