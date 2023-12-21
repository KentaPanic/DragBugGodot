extends Control

@export var slider : HSlider

# Called when the node enters the scene tree for the first time.
func _ready():
	slider.connect("drag_started",on_drag_started)
	slider.connect("drag_ended",on_drag_end)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func on_drag_started():
	print(slider.value)


func on_drag_end(value_changed:bool):
	print(slider.value, value_changed)
