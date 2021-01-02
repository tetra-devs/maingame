extends Node
class_name DialogueLoader

export (String, FILE, "*.json") var dialogue_file_path: String setget set_dialogue_file_path

var dialogue: Dictionary = {} setget ,get_dialogue

func load_dialogue() -> Dictionary:
	var file = File.new()
	assert(file.file_exists(dialogue_file_path))
	file.open(dialogue_file_path, file.READ)
	var result = parse_json(file.get_as_text())
	assert(result.size() > 0)
	return result

func get_dialogue() -> Dictionary:
	return dialogue

func set_dialogue_file_path(path: String) -> void:
	assert(path.ends_with(".json"))
	dialogue_file_path = path
