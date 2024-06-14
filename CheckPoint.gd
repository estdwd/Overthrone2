extends Area2D

var lastpos = null
onready var torch = get_node("/root/Main/Objects/TorchLight")
onready var player = get_node("/root/Main/Player")

func _ready():
	pass

func _on_CheckPoint_body_entered(body):
	if body.name == "Player":
		CheckPoint.lastpos = global_position
		$AnimationPlayer.play("open")
	if body.name == "Torchlight":
		torch.global_position = CheckPoint.lastpos
