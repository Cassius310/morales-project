extends Area2D

@onready var game_manager: Node = %GameManager
@onready var pick_up_sound: AudioStreamPlayer2D = $PickUpSound
@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _on_body_entered(_body):
	game_manager.add_point()
	animation_player.play("pick up")
