extends CanvasLayer
class_name Inventory

@onready var window := %Inventory
@onready var hotbar := %Hotbar


func _ready() -> void:
	hotbar.get_slot(0).define(0, 1)
	hotbar.get_slot(1).define(1, 1)
	hotbar.get_slot(2).define(2, 1)
	hotbar.get_slot(3).define(3, 1)


func toggle_window() -> void:
	window.set_visible(!window.visible)

	if window.visible: Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	else: Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
