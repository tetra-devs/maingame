extends CanvasLayer


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"
onready var system = $DialogueSystem
export (String, FILE, "*.json") var dialogue_file_path: String
signal completed

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	system.dialogue_file_path = dialogue_file_path

func start() -> void:
	system.start()

func _on_DialogueSystem_completed() -> void:
	emit_signal("completed")
