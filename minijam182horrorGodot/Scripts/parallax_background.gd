extends ParallaxBackground

var max_scroll_x = 2480  # Match Limit End X
var scroll_speed = 100   # Pixels per second

func _process(delta):
	if scroll_offset.x < max_scroll_x:
		scroll_offset.x += scroll_speed * delta
