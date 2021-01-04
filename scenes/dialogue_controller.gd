extends CanvasLayer


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"
onready var system = $DialogueSystem
export (String, FILE, "*.json") var dialogue_file_path: String = "" setget set_dialogue_file_path
signal completed

# Called when the node enters the scene tree for the first time.
onready var dialogue = $DialogueSystem/DialogBox/box/dialogue
onready var speaker = $DialogueSystem/DialogBox/box/speaker
onready var box = $DialogueSystem/DialogBox/box


var index = 0
var loadedDialogue: Dictionary

onready var dialogLoader: DialogueLoader = $DialogueSystem/DialogueLoader
onready var tween: Tween = $DialogueSystem/Tween

var state: Dictionary = {} setget set_state

func set_state(new_state: Dictionary) -> void:
	state = new_state
	
func process_state(new_state: Dictionary) -> void:
	speaker.text = new_state["character"]+ ":"
	dialogue.text = new_state["text"]
	tween.interpolate_property(dialogue, "visible_characters", 0, dialogue.text.length(), 0.08 * dialogue.text.length())
	tween.start()

func _ready() -> void:
	if dialogue_file_path != "":
		loadedDialogue = dialogLoader.load_dialogue()

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
	loadedDialogue = dialogLoader.load_dialogue()
	system.set_visible(true)
	set_state(loadedDialogue[String(index)])
	process_state(state)

func set_dialogue_file_path(path: String) -> void:
	dialogue_file_path = path
	yield($DialogueSystem/DialogueLoader, "ready")
	$DialogueSystem/DialogueLoader.set_dialogue_file_path(dialogue_file_path)

