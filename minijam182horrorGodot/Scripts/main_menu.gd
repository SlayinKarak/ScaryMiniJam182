extends Control

@onready var MainMusic = $SpookyMusic
@onready var HoverSound = $Hover
@onready var SelectSound = $Select

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	MainMusic.play()


func _on_play_pressed() -> void:
	SelectSound.play()
	await get_tree().create_timer(0.7).timeout
	get_tree().change_scene_to_file("res://Scenes/level_1.tscn")

func _on_options_pressed() -> void:
	SelectSound.play()


func _on_quit_pressed() -> void:
	SelectSound.play()

func _on_play_mouse_entered() -> void:
	HoverSound.play()

func _on_options_mouse_entered() -> void:
	HoverSound.play()

func _on_quit_mouse_entered() -> void:
	HoverSound.play()
