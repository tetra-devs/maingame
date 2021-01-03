extends KinematicBody2D


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"

var _velocity := Vector2()
export var max_speed:= 100.0
export var acceleration := 100.0
export var friction := 500.0
onready var animationPlayer = $AnimationPlayer
onready var animationTree = $AnimationTree
onready var animationState = animationTree.get("parameters/playback")
onready var lifeBar = $PlayerHealthBar
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

func save() -> Dictionary:
	var save_dict = {
		"filename" : get_filename(),
		"parent" : get_parent().get_path(),
		"pos_x": position.x + 100,
		"pos_y": position.y + 100,
	}
	return save_dict
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	var input_vector = Vector2.ZERO
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	input_vector = input_vector.normalized()
	var transformed_input_vector = Vector2.ZERO
	transformed_input_vector.x = input_vector.x * 2
	transformed_input_vector.y = input_vector.y
	transformed_input_vector = transformed_input_vector.normalized()
	if input_vector != Vector2.ZERO:
		animationTree.set("parameters/idle/blend_position", input_vector)
		animationTree.set("parameters/run/blend_position", input_vector)
		animationState.travel("run")
		_velocity = _velocity.move_toward(transformed_input_vector * max_speed, acceleration * delta)
	else:
		animationState.travel("idle")
		_velocity = _velocity.move_toward(Vector2.ZERO, friction * delta)


# warning-ignore:return_value_discarded
	_velocity = move_and_slide(_velocity)
