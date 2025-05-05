extends Node2D

const SPEED = 60
var direction = 1

@onready var raycastRight = $RayCastRight
@onready var raycastLeft = $RayCastLeft
 
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if raycastLeft.is_colliding():
		print("raycastLeft")
		direction = 1
	if raycastRight.is_colliding():
		print("raycastRight")
		direction = -1
	position.x += SPEED * delta * direction
