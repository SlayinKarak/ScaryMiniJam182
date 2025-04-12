extends Control

@onready var MainMusic = $SpookyMusic
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	MainMusic.play()


func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/level_1.tscn")


func _on_options_pressed() -> void:
	pass # Replace with function body.


func _on_quit_pressed() -> void:
	pass # Replace with function body.
