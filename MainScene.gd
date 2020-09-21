extends Node2D

onready var camera = $Camera2D
onready var player = $Player

onready var background1 = $Background_1
onready var background2 = $Background_3
onready var background3 = $Background_5
var startingPositionCameraX

func _ready():
	startingPositionCameraX = camera.position.x
	
func _process(delta):
	camera.position.x = player.position.x
	
	var movementX = startingPositionCameraX - camera.position.x
	
	background1.position.x = movementX * 0.2
	background2.position.x = movementX * 0.4
	background3.position.x = movementX * 0.8
		

	
