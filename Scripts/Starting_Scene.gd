extends Node2D

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
		var Data = Map.get_cell_tile_data(0, TilePos)
		if (null == Data):
			print("nothing at", TilePos)

func _on_crow_guy_clicked():
	DialogueBody.text = "Life or bath for dry cat"
	Dialogue.show()
