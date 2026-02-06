extends Area2D

@onready var game_manager: Node = %GameManager

func _on_body_entered(_body):
	game_manager.add_health()
	queue_free() # Replace with function body.
