extends KinematicBody2D

export var speed: int = 600
var gravity = 2000
var velocity: Vector2 = Vector2()

func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	velocity.y += delta * gravity
	
	if Input.is_action_pressed("ui_left"):
		velocity.x = -speed
		$AnimatedSprite.flip_h = true
		$AnimatedSprite.play("run")
	elif Input.is_action_pressed("ui_right"):
		velocity.x = speed
		$AnimatedSprite.flip_h = false
		$AnimatedSprite.play("run")
	else:
		velocity.x = 0
		$AnimatedSprite.play("idle")
	
	velocity = move_and_slide(velocity, Vector2(0, -1))
