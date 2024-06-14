extends Node2D

onready var anim = $AnimationPlayer
onready var Lext = $Text
export var text1 = ""

func _ready():
	text1 = Lext.text
	anim.play("start")
