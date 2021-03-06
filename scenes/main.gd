extends Node2D

onready var system = $"initial_story"
onready var system_main = $"main_dialogue"
onready var over_hear = $Over_hearing
# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	ProgressManager.load_game()
	$initial_story.set_dialogue_file_path("res://resources/dialogue/story.json")
	$initial_story.start()
	# Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_initial_story_completed():
	system_main.set_dialogue_file_path ("res://resources/dialogue/obj1.json")
	system_main.start()


func _on_Node2D2_hear():
	$Over_hearing.set_dialogue_file_path("res://resources/dialogue/overheard_1.json")
	$Over_hearing.start()


func _on_Node2D3_hear():
	$Over_hearing.set_dialogue_file_path("res://resources/dialogue/overheard_2.json")
	$Over_hearing.start()


func _on_Area2D_body_entered(body):
	ProgressManager.save_game()
	get_tree().change_scene("res://resources/accesable_miniature/Indoors/player_room.tscn")


func _on_Node2D4_hear():
	$Over_hearing.set_dialogue_file_path("res://resources/dialogue/overheard_1.json")
	$Over_hearing.start()
