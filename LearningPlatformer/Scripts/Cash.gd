
extends Node2D

export var value = 1



func _ready():
	if get_owner() != null:
		get_owner().cash_total += value
		get_owner().get_node("Player/cash_total").set_text(str(get_owner().cash_total))
		get_owner().get_node("Player/cash_collected").set_text(str(get_owner().cash_collected))


func _collect_cash(body):
	if get_owner() != null:
		get_owner().cash_collected += value
	print(get_owner().cash_collected)
	get_owner().get_node("Player/cash_collected").set_text(str(get_owner().cash_collected))
	
	queue_free()
