extends CharacterBody2D
class_name Player

@onready var anim = $AnimatedSprite2D
@onready var sprite = $AnimatedSprite2D
@onready var frutaslabel = $CanvasLayer/HBoxContainer/FrutasLabel



const SPEED = 400
const run = 300
const JUMP_VELOCITY = 400.0
var direccion = 0.0
const gravity = 12


func _ready():
	Global.Player = self

func _physics_process(delta):
	direccion = Input.get_axis("ui_left","ui_right")
	velocity.x = direccion * SPEED
	
	if direccion != 0:
		anim.play("walk")
		print("Me muevo")
	else:
		anim.play("idle")
		print("estoy quieto")
	sprite.flip_h = direccion < 0 if direccion != 0 else sprite.flip_h
	
	
	
	if is_on_floor() and Input.is_action_just_pressed("ui_accept"):
		
		velocity.y -= JUMP_VELOCITY
	if !is_on_floor():
		anim.play("jump")
		print("Salto")
		velocity.y += gravity
		
	if Input.is_action_pressed("shift"):
		print("CORRIENDO")
		
		velocity.x += direccion * run
		
		
	
	
	move_and_slide()

func _dead():
	set_physics_process(false)
	queue_free()

func iupdate():
	$CanvasLayer/HBoxContainer/FrutasLabel2.text = str(Global.frutas)
	

