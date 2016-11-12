extends Node2D

var text = ""

func _ready():
	set_process_input(true)

func _input(event):
	var labelText = get_node("text")
	if (event.is_action_pressed("charA") && !event.is_echo()):
		text += "A"
	elif (event.is_action_pressed("charB") && !event.is_echo()):
		text += "B"
	elif (event.is_action_pressed("charC") && !event.is_echo()):
		text += "C"
	
	labelText.set_text(text)