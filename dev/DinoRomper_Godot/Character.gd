extends KinematicBody

# class variables
var velocity = Vector3(0,0,0)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	# Update position
	move_and_slide(velocity)

# Handle inputs
func _input(event):
	
	if (event.is_action_pressed("ui_up")):
		velocity.z = 5
	elif (event.is_action_pressed("ui_down")):
		velocity.z = -5
	elif (event.is_action_released("ui_up")
			or event.is_action_released("ui_down")):
		velocity.z = 0
		
	if (event.is_action_pressed("ui_right")):
		velocity.x = -5
	elif (event.is_action_pressed("ui_left")):
		velocity.x = 5
	elif (event.is_action_released("ui_left")
			or event.is_action_released("ui_right")):
		velocity.x = 0