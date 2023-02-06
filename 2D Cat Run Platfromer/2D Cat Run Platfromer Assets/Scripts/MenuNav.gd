extends Panel
# Onready var is when the contents specified are ready to be used. QuitButton var is under a node specified below. The variable QA is for only Quality Assurence purposes to mark if the program should be played in QA Mode.
onready var QuitButton = get_node("GridContainer/QuitButton")
var QA = false
# Function below runs when ready.
func _ready():
	OS.set_window_maximized(true)
	if QA == true:
		print("QA Mode is enabled!") # Remove Later
		var QAMessage = get_node("QATestPopUp")
		QAMessage.show()
	else:
		print("QA Mode is disabled!") # Remove Later
		pass
# Runs the function when the dev level button is pressed.
func _on_Button_pressed():
	get_tree().change_scene("res://Dev-Lev.tscn")
# Runs the function when Level 1 is pressed.
func _on_Button2_pressed():
	get_tree().change_scene("res://Lev-1.tscn")
# Runs the function when the manual buttion is pressed.
func _on_ManualButton_pressed():
	var dialog = get_node("Manual")
	dialog.show()
# Runs the function when the quit button is pressed.
func _on_QuitButton_pressed():
	var dialog = get_node("QuitDialog")
	dialog.show()
# Runs the function when the player confirms that they want to close the program. When this happens the current process of the game will be terminated.
func _on_QuitConfirm_pressed():
	OS.kill(OS.get_process_id())
# Runs the function when the player doesn't want to terminate the program.
func _on_Cancel_pressed():
	var dialog = get_node("QuitDialog")
	dialog.hide()
# Runs the function when the player presses OK & runs the next prompt.
func _on_QATestPopUp_confirmed():
	if QA == true:
		var Manual = get_node("Manual")
		Manual.show()
	else:
		pass
# Runs the function when the player clicks on OK and will change the scene to the dev level.
func _on_Manual_confirmed():
	if QA == true:
		get_tree().change_scene("res://Dev-Lev.tscn")
	else:
		pass
