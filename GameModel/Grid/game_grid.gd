class_name GameGrid extends Node

static var units : Dictionary[Vector3i, Unit]

static func spawn_unit(unit : Unit, position : Vector3i)->bool:
	var return_val := false
	if units.keys().has(position) and units.get(position) and is_instance_valid(units.get(position)):
		return_val = true
	units.set(position, unit)
	return return_val

static func get_unit(position : Vector3i)->Unit:
	return units.get(position, null)

static func remove_unit(unit : Unit)->bool:
	if units.has(unit) and is_instance_valid(unit):
		units.erase(unit)
		return true
	return false

static func remove_unit_from_position(position : Vector3i)->bool:
	if get_unit(position):
		return remove_unit(get_unit(position))
	return false
