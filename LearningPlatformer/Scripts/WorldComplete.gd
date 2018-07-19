# WorldComplete.gd
extends Area2D

export(String, FILE, "*.tscn") var next_world

func _physics_process(delta):
	if get_owner().cash_total == get_owner().cash_collected:
		var bodies = get_overlapping_bodies()
		for body in bodies:
			if body.name == "Player":
				get_tree().change_scene(next_world)
