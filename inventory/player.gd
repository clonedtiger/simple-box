extends CharacterBody2D
# Player.gd
# This script controls the player's movement and collision with walls.
@export var inv: Inv
# Define the movement speed of the player.
# You can adjust this value to make the player move faster or slower.
@export var speed: float = 200.0

# _physics_process is called every physics frame (fixed time step).
# This is the recommended place for physics-related logic,
# like movement and collision detection.
func _physics_process(delta: float) -> void:
	# Get the input vector from arrow keys (or WASD, depending on project settings).
	# This returns a normalized vector (length 1) for diagonal movement,
	# preventing faster diagonal movement.
	var input_direction: Vector2 = Input.get_vector("a", "d", "w", "s")

	# Calculate the velocity based on input direction and speed.
	# The 'delta' parameter ensures that movement is frame-rate independent.
	velocity = input_direction * speed

	# Move the player and handle collisions.
	# move_and_slide() automatically moves the CharacterBody2D
	# and slides along collision surfaces.
	# If it hits a wall, it will stop movement in that direction.
	move_and_slide()

	# You can add debug prints to see the velocity or input direction if needed:
	# print("Input Direction: ", input_direction)
	# print("Velocity: ", velocity)
# Or CharacterBody3D, etc.
