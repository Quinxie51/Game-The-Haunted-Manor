extends CanvasLayer



func show_win_screen(found:bool):
	$Win_kitchen.visible = found
	
func show_flashlight(show: bool):
	$Inventory/FlashLight_claim/flashLight.visible = show

func show_keyPad(found:bool):
	$Keypad.visible = found
	

