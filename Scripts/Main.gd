extends Node2D

func _ready():
	Global.CURRENT_LEVEL_NUMBER+=1
	#print(Global.CURRENT_LEVEL_NUMBER)
	print(test("fuck"))
	pass # Replace with function body.

func _draw():
	for x in range(0, 1152, 64):
		draw_line(Vector2(x, 0), Vector2(x, 640), Color8(0, 0, 0), 1.5)
	for y in range(0, 640, 64):
		draw_line(Vector2(0, y), Vector2(1152, y), Color8(0, 0, 0), 2)
		
func test(words: String) -> String:
	return "bs"
