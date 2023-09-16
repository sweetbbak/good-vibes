extends Node

@onready
var r_slider = $container/VBoxContainer2/R_slider

@onready
var l_slider = $container/VBoxContainer2/L_slider

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func vibrator():
	Input.stop_joy_vibration(0)
	var light_strength = l_slider.value / 100.00
	var heavy_strength = r_slider.value / 100.00
	Input.start_joy_vibration(0, light_strength, heavy_strength, 100000)

func _on_start_button_up():
	vibrator()

func _on_stop_button_up():
	Input.stop_joy_vibration(0)

func _on_l_slider_value_changed(value):
	vibrator()

func _on_r_slider_value_changed(value):
	vibrator()
