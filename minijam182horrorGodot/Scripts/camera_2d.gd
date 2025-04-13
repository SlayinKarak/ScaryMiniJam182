extends Camera2D  # Or attach this to a player or script that tracks position

@onready var parallax_layer = $"../ParallaxBackground/ParallaxLayer"
@onready var parallax_layer2 = $"../ParallaxBackground/ParallaxLayer2"
@onready var parallax_layer3 = $"../ParallaxBackground/ParallaxLayer3"
@onready var parallax_layer4 = $"../ParallaxBackground/ParallaxLayer4"
@onready var parallax_layer5 = $"../ParallaxBackground/ParallaxLayer5"
@onready var parallax_layer6 = $"../ParallaxBackground/ParallaxLayer6"

var stop_mirroring_x = 1800  # X position where the mirroring should stop

func _process(delta):
	if global_position.x >= stop_mirroring_x:
		parallax_layer.motion_mirroring.x = 0  # Stops horizontal mirroring
	else:
		parallax_layer.motion_mirroring.x = 1152 # Or whatever your texture width 
