extends RayCast3D

var current_collider
var root

func _ready():
	root = get_parent().get_parent().get_parent()

func _process(delta):
	var collider = get_collider()

	if is_colliding() and collider is Interactable:
		if Input.is_action_just_pressed("interact"):
			collider.interact()
			
	if is_colliding() and collider is Lamp:
		if Input.is_action_just_pressed("interact"):
			collider.interact()
			root.light_strength = 24
			root.lamps = 1
