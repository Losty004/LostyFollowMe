extends CanvasLayer

func _physics_process(delta):
	if Input.is_action_just_pressed("Pausa"):
		$AudioStreamPlayer.play()
		print("PAUSA")
		get_tree().paused = not get_tree().paused
		$Luz.visible = !$Luz.visible
		$Texto.visible = !$Texto.visible
		$Opciones.visible = !$Opciones.visible
	


func _on_resume_pressed():
	get_tree().paused = false
	$Opciones.visible = false
	$Luz.visible = false
	$Texto.visible = false
	pass # Replace with function body.
	



func _on_restart_pressed():
	get_tree().paused = false
	get_tree().reload_current_scene()
	$Texto.visible = false
	pass # Replace with function body.



func _on_exit_pressed():
	get_tree().quit()
	pass # Replace with function body.
