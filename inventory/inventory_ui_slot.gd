extends Panel
@onready var item_visuals: Sprite2D = $item_display

func update(item: ivnt_item):
	if !item:
		item_visuals.visible = false
	else:
		item_visuals.visible = true
		item_visuals.texture = item.texture
