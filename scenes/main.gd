extends Node2D

onready var system = $"initial_story"
onready var system_main = $"main_dialogue"
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	ProgressManager.load_game()
	$"initial_story".set_dialogue_file_path("res://resources/dialogue/story.json")
	$"initial_story".start()
	# Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_initial_story_completed():
	system_main.set_dialogue_file_path ("res://resources/dialogue/obj1.json")
	system_main.start()
