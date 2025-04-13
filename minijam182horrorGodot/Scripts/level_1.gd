extends Node2D

@onready var cam = $Camera2D
@onready var player = $CharacterBody2D
@onready var Ambience = $Ambience

func _ready() -> void:
	Ambience.play()

func _process(delta: float) -> void:
	cam.set_position(player.get_position())
 
