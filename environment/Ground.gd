extends StaticBody2D

func _ready():
	pass # Replace with function body.


func _on_DeathZone_body_entered(body):
	if body is Player:
		if body.has_method("die"):
			body.die()
