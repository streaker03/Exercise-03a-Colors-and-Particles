extends Control

var color_paddle = false
var color_ball = false
var color_blocks = false
var color_background = false

var particle_paddle = false
var particle_walls = false
var particle_blocks = false

signal changed

func _ready():
	pass
	

func reset_values():
	color_paddle = false
	color_ball = false
	color_blocks = false
	color_background = false
	
	particle_paddle = false
	particle_walls = false
	particle_blocks = false
	emit_signal("changed")


func _on_Reset_pressed():
	get_node("/root/Game/Bricks").start_bricks()
	get_node("/root/Game/Ball_Container").start_ball()
	reset_values()


func _on_Quit_pressed():
	get_tree().quit()


func _on_Color_Paddle_toggled(button_pressed):
	color_paddle = false if color_paddle else true
	emit_signal("changed")


func _on_Color_Ball_toggled(button_pressed):
	color_ball = false if color_ball else true
	emit_signal("changed")


func _on_Color_Blocks_toggled_(button_pressed):
	color_blocks = false if color_blocks else true
	emit_signal("changed")


func _on_Color_Background_toggled(button_pressed):
	color_background = false if color_background else true
	emit_signal("changed")


func _on_Particle_Paddle_toggled(button_pressed):
	particle_paddle = false if particle_paddle else true
	emit_signal("changed")


func _on_Particle_Walls_toggled(button_pressed):
	particle_walls = false if particle_walls else true
	emit_signal("changed")


func _on_Particle_Blocks_toggled(button_pressed):
	particle_blocks = false if particle_blocks else true
	emit_signal("changed")
