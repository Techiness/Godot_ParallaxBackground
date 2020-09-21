extends Camera2D

onready var player = get_tree().get_root().get_node("Player")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	position.x = player.position.x
