extends Node2D

var text = ""
var isProcessed = false

func _ready():
	set_process_input(true)

# Handling the keyboard presed keys
func _input(event):
	var labelText = get_node("cnt_input/lbl_text")
	if (!isProcessed):
		if (event.is_action_pressed("charA") && !event.is_echo()):
			text += "a"
		elif (event.is_action_pressed("charB") && !event.is_echo()):
			text += "b"
		elif (event.is_action_pressed("charC") && !event.is_echo()):
			text += "c"
		elif (event.is_action_pressed("charD") && !event.is_echo()):
			text += "d"
		elif (event.is_action_pressed("charE") && !event.is_echo()):
			text += "e"
		elif (event.is_action_pressed("charF") && !event.is_echo()):
			text += "f"
		elif (event.is_action_pressed("charG") && !event.is_echo()):
			text += "g"
		elif (event.is_action_pressed("charH") && !event.is_echo()):
			text += "h"
		elif (event.is_action_pressed("charI") && !event.is_echo()):
			text += "i"
		elif (event.is_action_pressed("charJ") && !event.is_echo()):
			text += "j"
		elif (event.is_action_pressed("charK") && !event.is_echo()):
			text += "k"
		elif (event.is_action_pressed("charL") && !event.is_echo()):
			text += "l"
		elif (event.is_action_pressed("charM") && !event.is_echo()):
			text += "m"
		elif (event.is_action_pressed("charN") && !event.is_echo()):
			text += "n"
		elif (event.is_action_pressed("charO") && !event.is_echo()):
			text += "o"
		elif (event.is_action_pressed("charP") && !event.is_echo()):
			text += "p"
		elif (event.is_action_pressed("charQ") && !event.is_echo()):
			text += "q"
		elif (event.is_action_pressed("charR") && !event.is_echo()):
			text += "r"
		elif (event.is_action_pressed("charS") && !event.is_echo()):
			text += "s"
		elif (event.is_action_pressed("charT") && !event.is_echo()):
			text += "t"
		elif (event.is_action_pressed("charU") && !event.is_echo()):
			text += "u"
		elif (event.is_action_pressed("charV") && !event.is_echo()):
			text += "v"
		elif (event.is_action_pressed("charW") && !event.is_echo()):
			text += "w"
		elif (event.is_action_pressed("charX") && !event.is_echo()):
			text += "x"
		elif (event.is_action_pressed("charY") && !event.is_echo()):
			text += "y"
		elif (event.is_action_pressed("charZ") && !event.is_echo()):
			text += "z"
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
		elif (event.is_action_pressed("char!") && !event.is_echo()):
			text += "!"
		elif (event.is_action_pressed("char@") && !event.is_echo()):
			text += "@"
		elif (event.is_action_pressed("char#") && !event.is_echo()):
			text += "#"
		elif (event.is_action_pressed("char$") && !event.is_echo()):
			text += "$"
		elif (event.is_action_pressed("char%") && !event.is_echo()):
			text += "%"
		elif (event.is_action_pressed("char^") && !event.is_echo()):
			text += "^"
		elif (event.is_action_pressed("char&") && !event.is_echo()):
			text += "&"
		elif (event.is_action_pressed("char*") && !event.is_echo()):
			text += "*"
		elif (event.is_action_pressed("char(") && !event.is_echo()):
			text += "("
		elif (event.is_action_pressed("char)") && !event.is_echo()):
			text += ")"
		elif (event.is_action_pressed("char`") && !event.is_echo()):
			text += "`"
		elif (event.is_action_pressed("char~") && !event.is_echo()):
			text += "~"
		elif (event.is_action_pressed("char-") && !event.is_echo()):
			text += "-"
		elif (event.is_action_pressed("char_") && !event.is_echo()):
			text += "_"
		elif (event.is_action_pressed("charEq") && !event.is_echo()):
			text += "="
		elif (event.is_action_pressed("char+") && !event.is_echo()):
			text += "+"
		elif (event.is_action_pressed("char[") && !event.is_echo()):
			text += "["
		elif (event.is_action_pressed("char]") && !event.is_echo()):
			text += "]"
		elif (event.is_action_pressed("char\\") && !event.is_echo()):
			text += "\\"
		elif (event.is_action_pressed("char{") && !event.is_echo()):
			text += "{"
		elif (event.is_action_pressed("char}") && !event.is_echo()):
			text += "}"
		elif (event.is_action_pressed("char|") && !event.is_echo()):
			text += "|"
		elif (event.is_action_pressed("charSemiC") && !event.is_echo()):
			text += ";"
		elif (event.is_action_pressed("char'") && !event.is_echo()):
			text += "'"
		elif (event.is_action_pressed("charColon") && !event.is_echo()):
			text += ":"
		elif (event.is_action_pressed("charDQ") && !event.is_echo()):
			text += "\""
		elif (event.is_action_pressed("char,") && !event.is_echo()):
			text += ","
		elif (event.is_action_pressed("char.") && !event.is_echo()):
			text += "."
		elif (event.is_action_pressed("charSlash") && !event.is_echo()):
			text += "/"
		elif (event.is_action_pressed("char<") && !event.is_echo()):
			text += "<"
		elif (event.is_action_pressed("char>") && !event.is_echo()):
			text += ">"
		elif (event.is_action_pressed("char?") && !event.is_echo()):
			text += "?"
		elif (event.is_action_pressed("charSpace") && !event.is_echo()):
			text += " "
		elif (event.is_action_pressed("charDel") && !event.is_echo()):
			text.erase( (text.length()-1) ,1)
		elif (event.is_action_pressed("enter") && !event.is_echo()):
			text = ""
			isProcessed = true
	else:
		isProcessed = false
	labelText.set_text(str(text))