extends Label

func _ready():
	Global.load_game()
	text = String(Global.highscore)
	
func _process(_delta):
	if Global.points > Global.highscore:
		Global.highscore = Global.points
