
extends Node2D

var vector = Vector2(100,100)

func _ready():
	var containerRow = get_node("cnt_table/cnt_statesInstance")
	var duplicate = containerRow.duplicate()
	duplicate.show()
	print(duplicate.get_global_pos())
	var labelInput = get_node("lbl_AFD")
	var split = Globals.get("split")
	labelInput.set_text(split[0])