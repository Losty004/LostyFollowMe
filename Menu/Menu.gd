extends Control



func _on_play_pressed():
	get_tree().change_scene_to_file("res://niveles/test_room.tscn")
	pass # Replace with function body.


func _on_exit_pressed():
	get_tree().quit()
	pass # Replace with function body.


func _on_controls_pressed():
	get_tree().change_scene_to_file("res://scripts/controles_xdxdxd.tscn")
	pass # Replace with function body.
