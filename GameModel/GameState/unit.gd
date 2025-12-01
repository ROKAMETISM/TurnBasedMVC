class_name Unit
var stat := UnitStats.new()
var is_my_turn := false :
	set(value):
		if value == is_my_turn:
			return
		if value:
			EventHandler.turn_started.emit(self)
		else:
			EventHandler.turn_ended.emit(self)
		is_my_turn = value
var pawn : Sprite2D
