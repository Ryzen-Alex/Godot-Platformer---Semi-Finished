extends Node2D

var withPL = false

@onready var sprite_2d: Sprite2D = $Sprite2D
@onready var text: RichTextLabel = $Text
@onready var ray_cast_right: RayCast2D = $RayCastRight
@onready var ray_cast_left: RayCast2D = $RayCastLeft
@onready var animated_sprite: AnimatedSprite2D = $AnimatedSprite2D
@onready var node_2d: Node2D = $"../Player/Camera2D/CanvasLayer/Node2D"

var speak = true

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if speak:
		if ray_cast_right.is_colliding():
			withPL = true
		else:
			if ray_cast_left.is_colliding():
				withPL = true
			else:
				withPL = false
		if withPL:
			text.visible = true
			sprite_2d.visible = true
		else:
			text.visible = false
			sprite_2d.visible = false
	
	if Input.is_action_just_pressed("Interact") and withPL:
		sprite_2d.visible = false
		text.clear()
		node_2d.showTrade = true
		speak = false
		
		
		
	
