extends Area2D

func _physics_process(delta: float) -> void:
	var enemis_in_range = get_overlapping_bodies()
	if enemis_in_range.size() > 0:
		var target_enemy = enemis_in_range[0]
		look_at(target_enemy.global_position)

func shoot():
	const BULLET = preload("res://bullet.tscn")
	var new_bullet = BULLET.instantiate()
	
	new_bullet.global_position = %ShootingPoint.global_position
	%ShootingPoint.add_child(new_bullet)
