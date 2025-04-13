extends Control

@onready var MainMusic = $SpookyMusic
@onready var MenuSF = $MenuSFX1
@onready var MenuSF2 = $MenuSFX2
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	MainMusic.play()

func _on_button_mouse_entered() -> void:
	MenuSF.play()

func _on_play_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/level_1.tscn")
	MenuSF2.play()

func _on_options_pressed() -> void:
	pass # Replace with function body.
	MenuSF2.play()

func _on_quit_pressed() -> void:
	pass # Replace with function body.
	MenuSF2.play()

func _on_play_mouse_entered() -> void:
	pass # Replace with function body.


func _on_options_mouse_entered() -> void:
	pass # Replace with function body.


func _on_quit_mouse_entered() -> void:
	pass # Replace with function body.
