class_name UnitStats extends RefCounted
var max_hp : int
var current_hp : int :
	set(value) :
		current_hp = clampi(value, 0, max_hp)
		hp_changed.emit()
		if current_hp == 0:
			died.emit()
var speed : int
var offence : int
var defence : int

signal hp_changed
signal died

func take_damage(raw_damage : int)->int:
	current_hp -= raw_damage / defence
	return current_hp
