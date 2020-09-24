extends StaticBody2D

onready var HUD = get_node("/root/Game/HUD")
onready var Particle = get_node("Particles2D")


func emit_particle(pos):
	if HUD.particle_walls:
		Particle.position = pos
		if pos.x > 1000:
			Particle.rotation_degrees = 180
		elif pos.x < 3:
			Particle.rotation_degrees = 0
		elif pos.y > 745:
			Particle.rotation_degrees = 270
		else:
			Particle.rotation_degrees = 90
		Particle.emitting = true
	else:
		pass
