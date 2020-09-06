extends RigidBody2D

var screen_size
export var strength : float = 200

func _ready():
	screen_size = get_viewport_rect().size

func _process(delta):
	var speed = Vector2()
	if Input.is_action_just_pressed("right"):
		var direction = Vector2(1,-1).normalized()
		var velocity = direction * strength
		apply_impulse(Vector2.ZERO, velocity)
	if Input.is_action_just_pressed("left"):
		var direction = Vector2(-1,1).normalized()
		var velocity = direction * strength
		apply_impulse(Vector2.ZERO, velocity)
	if Input.is_action_just_pressed("up"):
		var direction = Vector2(10,0).normalized()
		var velocity = direction * strength
		apply_impulse(Vector2.ZERO, velocity)
	position += speed * delta
	position.x = clamp(position.x, 0, screen_size.x)
	position.y = clamp(position.y, 0, screen_size.y)
