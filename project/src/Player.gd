extends KinematicBody2D

var speed_settings 
var bullet_fired = preload("res://src/Bullet.tscn")

func _physics_process(delta):
	look_at(get_global_mouse_position())
	if Input.is_action_pressed("fire"):
		var bullet = bullet_fired.instance()
		get_tree().get_root().add_child(bullet)
		bullet.position = get_global_position()
		bullet.fire(get_global_mouse_position(),5)
