extends Node

var score = 0

@onready var score_label: Label = $ScoreLabel

func add_point():
	score += 1
	score_label.text= "You collected " + str(score) + " coins."
func add_health():
	score += 1
	score_label.text= "You collected " +str(score) + " fruits."
	
