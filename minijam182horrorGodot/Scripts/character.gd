extends CharacterBody2D


const SPEED = 150.0

@onready var walk_player = $WalkPlayer

var footstep_sounds = [
	preload("res://Sounds/SFX/Grass1.mp3"),
	preload("res://Sounds/SFX/Grass2.mp3"),
	preload("res://Sounds/SFX/Grass3.mp3"),
	preload("res://Sounds/SFX/Grass4.mp3")
]

var shuffle_bag = []

func _ready():
	reshuffle_bag()
	
func play_random_footstep():
	if shuffle_bag.is_empty():
		reshuffle_bag()

	var sound = shuffle_bag.pop_back()
	walk_player.stream = sound
	walk_player.play()
	
func reshuffle_bag():
	shuffle_bag = footstep_sounds.duplicate()
	shuffle_bag.shuffle()
#Sorry i did way to much just to make Footsteps not repeat over and over

var Walk_timer = 0.5

func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta
	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	
	if direction != 0 and is_on_floor():
		Walk_timer -= delta
		if Walk_timer <= 0:
			play_random_footstep()
			Walk_timer = 0.5
	else:
		
		Walk_timer = 0.0
		
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
