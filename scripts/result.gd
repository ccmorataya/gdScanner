
extends Node2D

var vector = Vector2(100,100)
var bool_trigger
var repeatedSymbols

func _ready():
	var containerRow = get_node("cnt_table/cnt_statesInstance")
	var duplicate = containerRow.duplicate()
	self.add_child(duplicate)
	duplicate.set_owner(self)
	duplicate.show()
	var labelAlpha = get_node("lbl_alphabeth")
	var split = Globals.get("split")
	split.remove(split.size()-1)
	var alphabethArray = []
	
	for x in split:
		alphabethArray.append(alphabethSymbol(x))
	
	repeatedSymbols = check_duplicates(alphabethArray)
	var lastItem = repeatedSymbols[repeatedSymbols.size()-1]#split[split.size()-1]
	var alphabeth = "{"
	for y in repeatedSymbols:
		alphabeth += y
		var compString = y.match(lastItem)
		if (!compString):
			alphabeth += ", "
	
	alphabeth += "}"
	labelAlpha.set_text(alphabeth)

func alphabethSymbol(alphaText):
	var symbol = ""
	var scann = RegEx.new()
	scann.compile("; \\d")
	scann.find(alphaText)
	var symbols = scann.get_captures()
	symbols = str(symbols)
	symbol = symbols.substr(3,1)
	return symbol

func check_duplicates(a):
	var seen = {}
	var returnedA = []
	seen[a[0]] = true
	for i in range(1, a.size()):
		var v = a[i]
		if seen.has(v):
			bool_trigger = false
		else:
			seen[v] = true
		returnedA.append(a[i])
	return returnedA