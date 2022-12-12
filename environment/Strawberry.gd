extends Area2D
class_name Strawberry
signal score


func _on_Strawberry_body_entered(body):
	if body is Player:
		hide()
		emit_signal("score")
