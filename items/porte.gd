extends Node2D


func _on_area_2d_body_entered(body: Node2D) -> void:
	print("body enter in door > "+str(body.name))
	if body.name == "Player":
		$AnimationPlayer.play("ourverture")
	
	pass # Replace with function body.


func _on_area_2d_body_exited(body: Node2D) -> void:
	if body.name == "Player":
		$AnimationPlayer.play("ourverture",-1,-1,true)
	
	pass # Replace with function body.
