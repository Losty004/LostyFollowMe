extends Area2D
func _ready():
	self.body_entered.connect(_on_body_entered)


func _on_body_entered(body):
	if body is Player:
		print("Muertowe")
		get_tree().reload_current_scene()
	
