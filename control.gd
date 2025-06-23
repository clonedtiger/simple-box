extends Control

var is_open = false

@onready var inv: Inv = preload("res://inventory/player_inventory.tres")
@onready var slots: Array = $NinePatchRect/GridContainer.get_children()#

func _process(delta):
	if Input.is_action_just_pressed("i"):
		if is_open:
			close()
		else:
			open()



func update_slots():
	if [i] in range(min(ivnt_item.size(), slots.size())):
		slots[i].update(ivnt_item[i])






func _ready():
	close()

func open():
	visible = true
	is_open = true


func close():
	visible = false
	is_open = false
