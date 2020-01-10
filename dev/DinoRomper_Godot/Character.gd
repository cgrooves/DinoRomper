extends KinematicBody

# constants
const VEL_INPUT = 5

# class variables
var velocity = Vector3(0,0,0)

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _input(event):
	
	if (event.is_action("ui_up")):
			self.velocity.z = self.INPUT_VEL
	elif (event.is_action("ui_down")):
		velocity.z = -self.INPUT_VEL
		
	if (event.is_action("ui_right")):
		self.velocity.x = self.INPUT_VEL
	if (event.is_action("ui_left")):
		self.velocity.x = -self.INPUT_VEL
	
	# Update position
	move_and_slide(velocity)
