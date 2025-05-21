extends Node2D

@onready var node_2d: Node2D = $"."
@onready var yes: Button = $Yes
@onready var no: Button = $No
@onready var rich_text_label: RichTextLabel = $RichTextLabel
@onready var _8_bit_retro_game_pixel_speech_bubble_balloon_icon_sticker_memo_keyword_planner_text_box_banner_png: Sprite2D = $"8Bit-retro-game-pixel-speech-bubble-balloon-icon-sticker-memo-keyword-planner-text-box-banner-png"

var yesAns = ""

var showTrade = false

var coins = "Trade 1 coin for a mystery item?"
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if showTrade:
		_8_bit_retro_game_pixel_speech_bubble_balloon_icon_sticker_memo_keyword_planner_text_box_banner_png.visible = true
		no.visible = true
		yes.visible = true
		rich_text_label.visible = true
		if yes.pressed:
			node_2d.visible = false
			yesAns = true
		elif no.pressed:
			yesAns = false
	else:
		_8_bit_retro_game_pixel_speech_bubble_balloon_icon_sticker_memo_keyword_planner_text_box_banner_png.visible = false
		no.visible = false
		yes.visible = false
		rich_text_label.visible = false
	
