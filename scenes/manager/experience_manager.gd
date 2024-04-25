extends Node

var current_experience = 0


func _ready():
	GameEvents.experience_vial_collected.connect(on_experience_vial_collected)


func increment_experience(numer: float):
	current_experience += numer
	print(current_experience)


func on_experience_vial_collected(number: float):
	increment_experience(number)
