extends CanvasLayer

onready var system = $Control
onready var dialogue = $Control/dialogue
onready var speaker = $Control/speaker
onready var box = $Control/TextureRect

signal completed

var index: int = 0
var loadedDialogue: Dictionary

onready var tween: Tween = $Control/Tween
export (String, FILE, "*.json") var dialogue_file_path = "res://resources/dialogue/ayan.json" setget set_dialogue_file_path

var state: Dictionary = {} setget set_state

func set_dialogue_file_path(path: String) -> void:
	dialogue_file_path = path
	DialogueLoader.set_dialogue_file_path(dialogue_file_path)

func set_state(new_state: Dictionary) -> void:
	state = new_state
	
func process_state(new_state: Dictionary) -> void:
	speaker.text = new_state["character"]+ ":"
	dialogue.text = new_state["text"]
	tween.interpolate_property(dialogue, "visible_characters", 0, dialogue.text.length(), 0.08 * dialogue.text.length())
	tween.start()

func _ready() -> void:
	system.set_visible(false)
	DialogueLoader.set_dialogue_file_path(dialogue_file_path)
#	set_state(loadedDialogue[String(index)])
#	process_state(state)

func _on_Button_button_down() -> void:
	tween.stop(dialogue)
	dialogue.visible_characters = dialogue.text.length()
	index += 1
	if index < loadedDialogue.size():
		set_state(loadedDialogue[String(index)])
		process_state(state)
	else:
		system.set_visible(false)
		emit_signal("completed")

func start() -> void:
	loadedDialogue = DialogueLoader.load_dialogue()
	system.set_visible(true)
	set_state(loadedDialogue[String(index)])
	print(loadedDialogue[String(index)])
	process_state(state)


