
extends Node2D

var vector = Vector2(100,100)

func _ready():
	var containerRow = get_node("cnt_table/cnt_statesInstance")
	var duplicate = containerRow.duplicate()
	duplicate.show()
	#print(duplicate.get_global_pos())
	var labelAlpha = get_node("lbl_alphabeth")
	var split = Globals.get("split")
	labelAlpha.set_text(str(alphabethSymbol(split)))

func alphabethSymbol(alphaText):
	var symbol = ""
	var scann = RegEx.new()
	scann.compile("; \\d")
	scann.find(alphaText[0])
	var symbols = scann.get_captures()
	symbols = str(symbols)
	symbol = symbols.substr(3,1)
	return symbol