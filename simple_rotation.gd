extends Sprite2D

@export var vit_rotation:float = 0

func _ready() -> void:
	pass
	
func _process(delta: float) -> void:
	self.rotate(vit_rotation)
