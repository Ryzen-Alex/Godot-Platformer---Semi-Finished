extends RichTextLabel

@onready var rich_text_label: RichTextLabel = $"."

@onready var node_2d: Node2D = $".."

var coins = 0

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var coins = node_2d.coins
	rich_text_label.clear()
	rich_text_label.add_text(str(coins))
