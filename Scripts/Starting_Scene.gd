extends Node2D

var WiseWords = ["Life or bath for dry cat. Does the cat not clean their fur?"]


@onready var Dialogue = $Camera2D/Dialogue
@onready var DialogueBody = $Camera2D/Dialogue/VBoxContainer/Body_Text
@onready var Map : TileMap = $TileMap


func _ready():
	$Camera2D.position = Vector2(604,278)
	Dialogue.hide()
	$AnimationPlayer.play("test")


func _input(_event):
	if Input.is_action_just_pressed("Click"):
		var MousePos = get_global_mouse_position()
		var TilePos = Map.local_to_map(MousePos)
		print(MousePos)
		if TilePos == Map.local_to_map(Vector2(402.0025, 34.00135)):
			print("guh")
			Crow_Guy_Clicked()

func Crow_Guy_Clicked():
	DialogueBody.text = WiseWords.pick_random()
	Dialogue.show()
