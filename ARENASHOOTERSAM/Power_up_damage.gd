extends Sprite

func _on_Hitbox_area_entered(area):
	if area.is_in_group("Player"):
		area.get_parent().damage = 2
		area.get_parent().get_node("Power_up_cool_down").wait_time = 2
		area.get_parent().get_node("Power_up_cool_down").start()
		area.get_parent().power_up_reset.append("Power_up_damage")
		queue_free()
