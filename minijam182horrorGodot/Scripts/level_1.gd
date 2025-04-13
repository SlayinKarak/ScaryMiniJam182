extends Node2D

@onready var cam = $Camera2D
@onready var player = $CharacterBody2D

func _process(delta: float) -> void:
	cam.set_position(player.get_position())
