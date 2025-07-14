extends CharacterBody2D
@onready var character_blue = $CharacterBlue

var currPos = [32,32]

func _ready():
	var treasure_node = get_node_or_null("/root/Main/Treasure")
	var treasure_pos = treasure_node.treasurePos

func _input(event):
	var newPos = currPos.duplicate()

	if event.is_action_pressed("ui_right"):
		newPos[0] += 16
		character_blue.rotation_degrees = 270

	elif event.is_action_pressed("ui_left"):
		newPos[0] -= 16
		character_blue.rotation_degrees = 90

	elif event.is_action_pressed("ui_down"):
		newPos[1] += 16
		character_blue.rotation_degrees = 0

	elif event.is_action_pressed("ui_up"):
		newPos[1] -= 16
		character_blue.rotation_degrees = 180

	elif event.is_action_pressed("Dig"):
		var treasure_node = get_node_or_null("/root/Main/Treasure")
		if currPos == treasure_node.treasurePos:
			print("Found Treasure!")
		else:
			print("No Treasure :(")
		return

	var min_x = 32
	var max_x = 272
	var min_y = 32
	var max_y = 272

	if newPos[0] >= min_x and newPos[0] <= max_x and newPos[1] >= min_y and newPos[1] <= max_y:
		currPos = newPos
		self.position = Vector2(currPos[0], currPos[1])
	else:
		print("Can't move outside boundary!")
		
func _on_boundary_body_exited(body):
	if body == self:
		print("Warning: Player left the movement boundary!")
