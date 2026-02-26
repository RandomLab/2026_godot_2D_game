extends CharacterBody2D

@export var gravity:float = 1500
@export var jump_force:float = -550
@export var speed:float = 400

func _ready():
	
	pass
	
	
func _process(delta: float):
	if not is_on_floor():
		velocity.y += gravity * delta
	else:
		if Input.is_action_just_pressed("ui_accept"):
			velocity.y = jump_force
	
	var direction := Input.get_axis("ui_left", "ui_right")
	velocity.x = direction * speed
	
	move_and_slide()
	pass
