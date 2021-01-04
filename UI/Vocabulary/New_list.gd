extends CanvasLayer
signal report(value)

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	$Control/Panel.set_visible(false)


func _on_Button_pressed():
	$Control/Panel.set_visible(true)


func _on_Panel_report(value):
	emit_signal('report',value)
