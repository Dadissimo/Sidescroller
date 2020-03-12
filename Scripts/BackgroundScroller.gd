extends ParallaxBackground

onready var cloudsFar = $CouldsFar
onready var cloudsNear = $CloudsNear

func _process(delta):
	var direction = Vector2(1 * delta ,0)
	print(direction)
	cloudsFar.position =  cloudsFar.position + direction
	print(cloudsFar.position)
