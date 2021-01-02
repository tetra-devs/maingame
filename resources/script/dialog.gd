extends Control

onready var dialogue = $DialogBox/box/dialogue
onready var speaker = $DialogBox/box/speaker
onready var box = $DialogBox/box

export (String, FILE, "*.json") var dialogue_file_path: String

var index = -1
var loadedDialogue: Dictionary

onready var dialogLoader: DialogueLoader = $DialogueLoader
onready var tween: Tween = $Tween

var state: Dictionary = {} setget set_state

func set_state(new_state: Dictionary) -> void:
	state = new_state
	
func process_state(new_state: Dictionary) -> void:
	speaker.text = new_state["character"]+ ":"
	dialogue.text = new_state["text"]
	tween.interpolate_property(dialogue, "visible_characters", 0, dialogue.text.length(), 0.08 * dialogue.text.length())
	tween.start()

func _ready() -> void:
	dialogLoader.set_dialogue_file_path(dialogue_file_path)
	loadedDialogue = dialogLoader.load_dialogue()
#	set_state(loadedDialogue[String(index)])
#	process_state(state)

func _on_Button_button_down() -> void:
	tween.stop(dialogue)
	index += 1
	if index < loadedDialogue.size():
		set_state(loadedDialogue[String(index)])
		process_state(state)
