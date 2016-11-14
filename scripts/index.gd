extends Node2D

var text = ""
var output = ""
var isProcessed = false
var currentScene = null
onready var labelText = get_node("cnt_input/lbl_text")
onready var labelOutput = get_node("cnt_transitions/lbl_output")

func _ready():
	currentScene = self
	set_process_input(true)

# Handling the keyboard presed keys
func _input(event):
	if (!isProcessed):
		if (event.is_action_pressed("charA") ):
			text += "a"
		elif (event.is_action_pressed("charB") ):
			text += "b"
		elif (event.is_action_pressed("charC") ):
			text += "c"
		elif (event.is_action_pressed("charD") ):
			text += "d"
		elif (event.is_action_pressed("charE") ):
			text += "e"
		elif (event.is_action_pressed("charF") ):
			text += "f"
		elif (event.is_action_pressed("charG") ):
			text += "g"
		elif (event.is_action_pressed("charH") ):
			text += "h"
		elif (event.is_action_pressed("charI") ):
			text += "i"
		elif (event.is_action_pressed("charJ") ):
			text += "j"
		elif (event.is_action_pressed("charK") ):
			text += "k"
		elif (event.is_action_pressed("charL") ):
			text += "l"
		elif (event.is_action_pressed("charM") ):
			text += "m"
		elif (event.is_action_pressed("charN") ):
			text += "n"
		elif (event.is_action_pressed("charO") ):
			text += "o"
		elif (event.is_action_pressed("charP") ):
			text += "p"
		elif (event.is_action_pressed("charQ") ):
			text += "q"
		elif (event.is_action_pressed("charR") ):
			text += "r"
		elif (event.is_action_pressed("charS") ):
			text += "s"
		elif (event.is_action_pressed("charT") ):
			text += "t"
		elif (event.is_action_pressed("charU") ):
			text += "u"
		elif (event.is_action_pressed("charV") ):
			text += "v"
		elif (event.is_action_pressed("charW") ):
			text += "w"
		elif (event.is_action_pressed("charX") ):
			text += "x"
		elif (event.is_action_pressed("charY") ):
			text += "y"
		elif (event.is_action_pressed("charZ") ):
			text += "z"
		elif (event.is_action_pressed("char1") ):
			text += "1"
		elif (event.is_action_pressed("char2") ):
			text += "2"
		elif (event.is_action_pressed("char3") ):
			text += "3"
		elif (event.is_action_pressed("char4") ):
			text += "4"
		elif (event.is_action_pressed("char5") ):
			text += "5"
		elif (event.is_action_pressed("char6") ):
			text += "6"
		elif (event.is_action_pressed("char7") ):
			text += "7"
		elif (event.is_action_pressed("char8") ):
			text += "8"
		elif (event.is_action_pressed("char9") ):
			text += "9"
		elif (event.is_action_pressed("char0") ):
			text += "0"
		elif (event.is_action_pressed("char!") ):
			text += "!"
		elif (event.is_action_pressed("char@") ):
			text += "@"
		elif (event.is_action_pressed("char#") ):
			text += "#"
		elif (event.is_action_pressed("char$") ):
			text += "$"
		elif (event.is_action_pressed("char%") ):
			text += "%"
		elif (event.is_action_pressed("char^") ):
			text += "^"
		elif (event.is_action_pressed("char&") ):
			text += "&"
		elif (event.is_action_pressed("char*") ):
			text += "*"
		elif (event.is_action_pressed("char(") ):
			text += "("
		elif (event.is_action_pressed("char)") ):
			text += ")"
		elif (event.is_action_pressed("char`") ):
			text += "`"
		elif (event.is_action_pressed("char~") ):
			text += "~"
		elif (event.is_action_pressed("char-") ):
			text += "-"
		elif (event.is_action_pressed("char_") ):
			text += "_"
		elif (event.is_action_pressed("charEq") ):
			text += "="
		elif (event.is_action_pressed("char+") ):
			text += "+"
		elif (event.is_action_pressed("char[") ):
			text += "["
		elif (event.is_action_pressed("char]") ):
			text += "]"
		elif (event.is_action_pressed("char\\") ):
			text += "\\"
		elif (event.is_action_pressed("char{") ):
			text += "{"
		elif (event.is_action_pressed("char}") ):
			text += "}"
		elif (event.is_action_pressed("char|") ):
			text += "|"
		elif (event.is_action_pressed("charSemiC") ):
			text += ";"
		elif (event.is_action_pressed("char'") ):
			text += "'"
		elif (event.is_action_pressed("charColon") ):
			text += ":"
		elif (event.is_action_pressed("charDQ") ):
			text += "\""
		elif (event.is_action_pressed("char,") ):
			text += ","
		elif (event.is_action_pressed("char.") ):
			text += "."
		elif (event.is_action_pressed("charSlash") ):
			text += "/"
		elif (event.is_action_pressed("char<") ):
			text += "<"
		elif (event.is_action_pressed("char>") ):
			text += ">"
		elif (event.is_action_pressed("char?") ):
			text += "?"
		elif (event.is_action_pressed("charSpace") ):
			text += " "
		elif (event.is_action_pressed("charDel") ):
			text.erase( (text.length()-1) ,1)
		elif (event.is_action_pressed("enter") ):
			output += text + "\n"
			labelOutput.set_text(output)
			text = ""
			isProcessed = true
	else:
		isProcessed = false
	labelText.set_text(str(text))

func _on_btn_scann_pressed():
	labelOutput.set_text("")
	Globals.set("split", output.split("\n"))
	output = ""
	setScene("res://scenes/result.tscn")
	print(Globals.get("split"))

# create a function to switch between scenes 
func setScene(scene):
	#clean up the current scene
	currentScene.queue_free()
	#load the file passed in as the param "scene"
	var s = ResourceLoader.load(scene)
	#create an instance of our scene
	currentScene = s.instance()
	# add scene to root
	get_tree().get_root().add_child(currentScene)