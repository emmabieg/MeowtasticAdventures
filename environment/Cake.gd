extends Area2D
class_name Cake

func _on_Strawberry_body_entered(body):
	if body is Player:
		hide()
