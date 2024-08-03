extends Area2D
class_name fruta

func _ready():
	self.body_entered.connect(_on_body_entered)


func _on_body_entered(body):
	if body is Player:
		Global.frutas += 1
		print(Global.frutas)
		
		queue_free()
