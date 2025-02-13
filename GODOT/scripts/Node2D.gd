extends Sprite2D

# Called when the node enters the scene tree for the first time.

export (int) var speed = 200

var velocity = Vector2()

func movement():
	velocity = Vector2()
	if Input.is_action_pressed('right'):
		velocity.x += 1
	velocity = velocity.normalized() * speed
	

func _physics_process(delta):
	get_input()
	velocity = move_and_slide(velocity)

func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
