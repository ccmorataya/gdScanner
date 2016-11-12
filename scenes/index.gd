extends Node2D

var text = ""

func _ready():
	set_process_input(true)

# Handling the keyboard presed keys
func _input(event):
	var labelText = get_node("text")
	if (event.is_action_pressed("charA") && !event.is_echo()):
		text += "A"
	elif (event.is_action_pressed("charB") && !event.is_echo()):
		text += "B"
	elif (event.is_action_pressed("charC") && !event.is_echo()):
		text += "C"
	elif (event.is_action_pressed("charD") && !event.is_echo()):
		text += "D"
	elif (event.is_action_pressed("charE") && !event.is_echo()):
		text += "E"
	elif (event.is_action_pressed("charF") && !event.is_echo()):
		text += "F"
	elif (event.is_action_pressed("charG") && !event.is_echo()):
		text += "G"
	elif (event.is_action_pressed("charH") && !event.is_echo()):
		text += "H"
	elif (event.is_action_pressed("charI") && !event.is_echo()):
		text += "I"
	elif (event.is_action_pressed("charJ") && !event.is_echo()):
		text += "J"
	elif (event.is_action_pressed("charK") && !event.is_echo()):
		text += "K"
	elif (event.is_action_pressed("charL") && !event.is_echo()):
		text += "L"
	elif (event.is_action_pressed("charM") && !event.is_echo()):
		text += "M"
	elif (event.is_action_pressed("charN") && !event.is_echo()):
		text += "N"
	elif (event.is_action_pressed("charO") && !event.is_echo()):
		text += "O"
	elif (event.is_action_pressed("charP") && !event.is_echo()):
		text += "P"
	elif (event.is_action_pressed("charQ") && !event.is_echo()):
		text += "Q"
	elif (event.is_action_pressed("charR") && !event.is_echo()):
		text += "R"
	elif (event.is_action_pressed("charS") && !event.is_echo()):
		text += "S"
	elif (event.is_action_pressed("charT") && !event.is_echo()):
		text += "T"
	elif (event.is_action_pressed("charU") && !event.is_echo()):
		text += "U"
	elif (event.is_action_pressed("charV") && !event.is_echo()):
		text += "V"
	elif (event.is_action_pressed("charW") && !event.is_echo()):
		text += "W"
	elif (event.is_action_pressed("charX") && !event.is_echo()):
		text += "X"
	elif (event.is_action_pressed("charY") && !event.is_echo()):
		text += "Y"
	elif (event.is_action_pressed("charZ") && !event.is_echo()):
		text += "Z"
	elif (event.is_action_pressed("char1") && !event.is_echo()):
		text += "1"
	elif (event.is_action_pressed("char2") && !event.is_echo()):
		text += "2"
	elif (event.is_action_pressed("char3") && !event.is_echo()):
		text += "3"
	elif (event.is_action_pressed("char4") && !event.is_echo()):
		text += "4"
	elif (event.is_action_pressed("char5") && !event.is_echo()):
		text += "5"
	elif (event.is_action_pressed("char6") && !event.is_echo()):
		text += "6"
	elif (event.is_action_pressed("char7") && !event.is_echo()):
		text += "7"
	elif (event.is_action_pressed("char8") && !event.is_echo()):
		text += "8"
	elif (event.is_action_pressed("char9") && !event.is_echo()):
		text += "9"
	elif (event.is_action_pressed("char0") && !event.is_echo()):
		text += "0"
	
	labelText.set_text(text)