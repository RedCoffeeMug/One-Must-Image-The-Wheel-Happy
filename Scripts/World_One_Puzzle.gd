extends Node2D

@onready var Map : TileMap = $TileMap
@onready var Portal1 = $Portal1
@onready var Portal2 = $Portal2
@onready var Portal3 = $Portal3

var Buttons = {
	"B1" : 1,
	"B2" : 2,
	"B3" : 3,
	"B4" : 4,
	"B5" : 5,
	"B6" : 6
}
var TotalNumber = 0
var ButtonsPressed = 0



#(788.7501, 71)
#(815.0001, 88.5)
#(780.0001, 127.25)
#(813.7501, 142.25)

#func _input(_event):
	#if Input.is_action_just_pressed("Click"):
		#var MousePos = get_global_mouse_position()
		#var TilePos = Map.local_to_map(MousePos)
		#print(MousePos)



#portal 1 = 3
#portal 2 = 8
#portal 3 = 11
func CheckNumber():
	match TotalNumber:
		0:
			Portal2.text = "Closed"
			Portal1.text = "Closed"
			Portal3.text = "Closed"
		3:
			Portal2.text = "Closed"
			Portal1.text = "Open"
			Portal3.text = "Closed"
		4:
			Portal2.text = "Closed"
			Portal1.text = "Open"
			Portal3.text = "Closed"
		5:
			Portal2.text = "Closed"
			Portal1.text = "Closed"
			Portal3.text = "Closed"
		6:
			Portal2.text = "Closed"
			Portal1.text = "Closed"
			Portal3.text = "Closed"
		7:
			Portal2.text = "Closed"
			Portal1.text = "Closed"
			Portal3.text = "Closed"
		8:
			Portal2.text = "Open"
			Portal1.text = "Closed"
			Portal3.text = "Closed"
		9:
			Portal2.text = "Closed"
			Portal1.text = "Closed"
			Portal3.text = "Closed"
		10:
			Portal2.text = "Open"
			Portal1.text = "Open"
			Portal3.text = "Closed"
		11:
			Portal2.text = "Closed"
			Portal1.text = "Closed"
			Portal3.text = "Open"


func _on_button_1_pressed():
	ButtonsPressed += 1
	if ButtonsPressed <= 2:
		TotalNumber += Buttons.B1
	CheckNumber()
	print(TotalNumber)


func _on_button_2_pressed():
	ButtonsPressed += 1
	if ButtonsPressed <= 2:
		TotalNumber += Buttons.B2
	CheckNumber()
	print(TotalNumber)


func _on_button_3_pressed():
	ButtonsPressed += 1
	if ButtonsPressed <= 2:
		TotalNumber += Buttons.B3
	CheckNumber()
	print(TotalNumber)


func _on_button_4_pressed():
	ButtonsPressed += 1
	if ButtonsPressed <= 2:
		TotalNumber += Buttons.B4
	CheckNumber()
	print(TotalNumber)


func _on_button_5_pressed():
	ButtonsPressed += 1
	if ButtonsPressed <= 2:
		TotalNumber += Buttons.B5
	CheckNumber()
	print(TotalNumber)


func _on_button_6_pressed():
	ButtonsPressed += 1
	if ButtonsPressed <= 2:
		TotalNumber += Buttons.B6
	CheckNumber()
	print(TotalNumber)


func _on_button_7_pressed():
	ButtonsPressed = 0
	TotalNumber = 0
	CheckNumber()
