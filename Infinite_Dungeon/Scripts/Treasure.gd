extends Area2D

var treasurePos = [0, 0]

# Called when the node enters the scene tree for the first time.
func _ready():    
	treasurePos[0] = randi_range(2, 17) * 16
	treasurePos[1] = randi_range(2, 17) * 16
	self.position = Vector2(treasurePos[0], treasurePos[1])
	print(treasurePos)


func get_random_treasure():
	var keys = Items.Treasure.keys()
	var random_key = keys[randi() % keys.size()]
	return Items.Treasure[random_key]
