extends StaticBody2D
signal hear

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_ovh_body_entered(body):
	print(body)
	if body != self:
		emit_signal('hear')
	
