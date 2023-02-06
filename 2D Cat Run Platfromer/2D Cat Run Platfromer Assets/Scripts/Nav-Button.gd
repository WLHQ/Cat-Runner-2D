extends MenuButton
# When pressed in game by the player, the scene will change back to the menu.
func _on_MenuButton_pressed():
	get_tree().change_scene("res://Menu.tscn")
