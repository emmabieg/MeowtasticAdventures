extends RigidBody2D
class_name Player


signal died

export var FLAP_FORCE = -200

var started = false
var alive = true

func _physics_process(_delta):
	if Input.is_action_just_pressed("flap") && alive:
		if !started:
			start()
		flap()

func start():
	if started: return
	started = true
	gravity_scale = 5.0
	
func flap():
	linear_velocity.y = FLAP_FORCE

func die():
	if !alive: return
	alive = false
	emit_signal("died")
