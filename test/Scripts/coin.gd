extends Area2D



func _on_body_entered(body: Node2D) -> void:
	body.coins = body.coins + 1
	queue_free()
	
