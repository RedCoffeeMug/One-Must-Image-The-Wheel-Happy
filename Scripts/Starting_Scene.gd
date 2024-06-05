extends Node2D

@onready var Dialogue = $Dialogue
@onready var DialogueTitle = $Dialogue/VBoxContainer/Title_Text
@onready var DialogueBody = $Dialogue/VBoxContainer/Body_Text


func _ready():
	Dialogue.hide()
	pass


func _on_crow_guy_clicked():
	DialogueTitle.text = "Epic Crow Guy"
	DialogueBody.text = "Life or bath for dry cat"
	Dialogue.show()
	pass
