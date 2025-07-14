extends Node2D


func _draw() -> void:
	var track: PackedVector2Array
	var points: Array
	var file = FileAccess.open("polygon.dat", FileAccess.READ)
	points = file.get_var()
	track = PackedVector2Array(points)
	
	print(Geometry2D.is_point_in_polygon(Vector2(-29.46695, 3.111899), points))
	draw_colored_polygon(track, Color.DARK_GRAY)
	draw_circle(Vector2(-29.46695, 3.111899), 2.0, Color.ORANGE)
