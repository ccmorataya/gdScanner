
extends Node2D

# member variables here, example:
# var a=2
# var b="textvar"

func _ready():
	var labelInput = get_node("lbl_input")
	var split = Globals.get("split")
	labelInput.set_text(split[0])