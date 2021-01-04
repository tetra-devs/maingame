extends CanvasLayer

onready var system = $DialogueSystem
onready var dialogue = $DialogueSystem/DialogBox/box/dialogue
onready var speaker = $DialogueSystem/DialogBox/box/speaker
onready var box = $DialogueSystem/DialogBox/box
signal completed

var index: int = 0
var loadedDialogue: Dictionary

onready var tween: Tween = $DialogueSystem/Tween
export (String, FILE, "*.json") var dialogue_file_path = "res://resources/dialogue/ayan.json" setget set_dialogue_file_path

var state: Dictionary = {} setget set_state

func set_dialogue_file_path(path: String) -> void:
	dialogue_file_path = path
	DialogueLoader.set_dialogue_file_path(dialogue_file_path)

func set_state(new_state: Dictionary) -> void:
	state = new_state
	
func process_state(new_state: Dictionary) -> void:
	if new_state['type'] == 'assertive':
		speaker.set_visible(true)
		dialogue.set_visible(true)
		$DialogueSystem/DialogBox/box/TextEdit.set_visible(false)
		speaker.text = new_state["character"]+ ":"
		dialogue.text = new_state["text"]
		tween.interpolate_property(dialogue, "visible_characters", 0, dialogue.text.length(), 0.08 * dialogue.text.length())
		tween.start()
	elif new_state['type'] == 'user_input':
		speaker.set_visible(false)
		dialogue.set_visible(false)
		$DialogueSystem/DialogBox/box/TextEdit.set_visible(true)
		
		

func _ready() -> void:
	system.set_visible(false)
	DialogueLoader.set_dialogue_file_path(dialogue_file_path)
#	set_state(loadedDialogue[String(index)])
#	process_state(state)

func _on_Button_button_down() -> void:
	if state['type'] == 'assertive':
		tween.stop(dialogue)
		dialogue.visible_characters = dialogue.text.length()
		index += 1
		if index < loadedDialogue.size():
			set_state(loadedDialogue[String(index)])
			process_state(state)
		else:
			system.set_visible(false)
			emit_signal("completed")
	elif state['type'] == 'user_input':
		if $DialogueSystem/DialogBox/box/TextEdit.text == state['text']+' ':
			index += 1
			if index < loadedDialogue.size():
				set_state(loadedDialogue[String(index)])
				process_state(state)
			else:
				system.set_visible(false)
				emit_signal("completed")
		else :
			$DialogueSystem/DialogBox/box/TextEdit.text = ''
			

func start() -> void:
	loadedDialogue = DialogueLoader.load_dialogue()
	system.set_visible(true)
	set_state(loadedDialogue[String(index)])
	process_state(state)



func _on_CanvasLayer_report(value):
	if $DialogueSystem/DialogBox/box/TextEdit.visible == true:
		$DialogueSystem/DialogBox/box/TextEdit.text += value + " "
	
