extends Node2D

var frutas = 0:
	set(val):
		frutas = val
		if Player != null:
			Player.iupdate()
			$frutasonido.play()
	get:
		return frutas

var Player
