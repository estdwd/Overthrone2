extends StaticBody2D

onready var area = $Door
onready var player = get_node("/root/Main/Player")
onready var anim = $AnimationPlayer
onready var keyui = get_node("/root/Main/Control/CL/KeyUI")

func _ready():
	if rotation_degrees == -90:
		pass



func _on_Door_body_entered(body):
	if body.name == "Player" and player.keys >= 1:
		rotation_degrees = -90
		player.keys -= 1
		keyui.subKey()
		area.queue_free()
		
