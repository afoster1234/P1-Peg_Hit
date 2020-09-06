extends RigidBody2D

export var bullet_speed = 3

func fire(mouse_pos,strength):
	var velocity = mouse_pos*bullet_speed
	apply_impulse(Vector2.ZERO, velocity)
