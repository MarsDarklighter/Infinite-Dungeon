extends Area2D

var treasurePos = [0, 0]

# Called when the node enters the scene tree for the first time.
func _ready():
	treasurePos[0] = randi_range(2, 17) * 16
	treasurePos[1] = randi_range(2, 17) * 16
	self.position = Vector2(treasurePos[0], treasurePos[1])
	print(treasurePos)

