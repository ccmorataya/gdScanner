
extends Node2D

var vector = Vector2(100,100)
var bool_trigger
var repeatedSymbols
var repeatedStates

func _ready():
	var symbolA = get_node("cnt_table/cnt_statesInstance/lbl_tableRowSymbol")
	var symbolB = get_node("cnt_table/cnt_statesInstance/lbl_tableRowSymbol2")
	var containerRow = get_node("cnt_table/cnt_statesInstance")
	
	var labelAlpha = get_node("lbl_alphabeth")
	var split = Globals.get("split")
	split.remove(split.size()-1)
	var alphabethArray = []
	var stateArray = []
	
	for x in split:
		alphabethArray.append(alphabethSymbol(x))
		stateArray.append(afdState(x))
	
	repeatedSymbols = check_duplicates(alphabethArray)
	repeatedStates = check_duplicates(stateArray)
	
	var lastSymbol = repeatedSymbols[repeatedSymbols.size()-1]#split[split.size()-1]
	var lastState = repeatedStates[repeatedStates.size()-1]
	
	var alphabeth = "{"
	for y in repeatedSymbols:
		alphabeth += y
		var compString = y.match(lastSymbol)
		if (!compString):
			alphabeth += ", "
	
	alphabeth += "}"
	
	var count = 0
	
	# Instantiate the row node for each state
	for i in repeatedStates:
		count = count + 1
		var duplicate = containerRow.duplicate()
		var newPosition = containerRow.get_pos()
		newPosition.y += 25 * count
		self.add_child(duplicate)
		duplicate.set_pos(newPosition)
		duplicate.get_node("lbl_tableRowState").set_text(i)
	
	#repeatedSymbols showed in the table labels
	symbolA.set_text(repeatedSymbols[0])
	symbolB.set_text(repeatedSymbols[1])
	
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

func afdState(alphaText):
	var symbol = ""
	var scann = RegEx.new()
	scann.compile("\\w\\d;")
	scann.find(alphaText)
	var symbols = scann.get_captures()
	symbols = str(symbols)
	symbol = symbols.substr(1, 2)
	return symbol