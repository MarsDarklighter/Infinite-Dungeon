extends Sprite2D

var compassPos = [16, 16]

func _process(delta):
	var player_node = get_node_or_null("/root/Main/Player")
	var treasure_node = get_node_or_null("/root/Main/Treasure")

	var player_pos = Vector2(player_node.currPos[0], player_node.currPos[1])
	var treasure_pos = Vector2(treasure_node.treasurePos[0], treasure_node.treasurePos[1])

	var direction = (treasure_pos - player_pos).normalized()

	self.rotation_degrees = rad_to_deg(direction.angle()) + 90

	self.position = Vector2(compassPos[0], compassPos[1])
