extends Node2D

const SPEED = 60

var direction = 1
var velocity = Vector2.ZERO
var speed = 300
var health = 1
var is_dead = false
var is_on_floor: bool = false
 

@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D


func _process(delta):
	if ray_cast_left.is_colliding():
		direction = 1
		animated_sprite_2d. flip_h = true
	if ray_cast_right.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = false
		
	position.x += direction * SPEED * delta


func _on_hit_area_body_entered(_body: Node2D) -> void:
	var player:Player = _body as Player
	player.velocity.y = player.JUMP_VELOCITY
#		_body.bounce_after_stomp()
#	$AnimatedSprite2D.play("dead")
#		await $AnimatedSprite2D.animation_finished
	queue_free()


		
