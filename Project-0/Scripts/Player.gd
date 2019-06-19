extends KinematicBody2D

const gravity = 20
const speed = 200
const jump_height = -550
const up = Vector2(0,-1)
var motion = Vector2()

func _physics_process(delta):
	
	motion.y  += gravity
	
	if Input.is_key_pressed(KEY_D):
		motion.x = speed
	elif Input.is_key_pressed(KEY_A):
		motion.x = -speed
	else:
		motion.x = 0
	
	if is_on_floor():
		if Input.is_key_pressed(KEY_W):
			motion.y = jump_height
	
	motion = move_and_slide(motion,up)
	pass
	
