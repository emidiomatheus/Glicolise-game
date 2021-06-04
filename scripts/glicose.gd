extends Node2D

var selecionado = false
var dentro_celula = false

func _ready():
	pass 

func _process(delta):
	if selecionado:
		followMouse()

func followMouse():
	position = get_global_mouse_position()

func _on_Area2D_input_event(viewport, event, shape_idx):
	if event is InputEventMouseButton and event.button_index == BUTTON_LEFT:
		if event.pressed == true and dentro_celula == false:
			selecionado = true
		else:
			selecionado = false
			
func _on_Area2D_area_entered(area):
	get_node("AnimationPlayer").play("animacaoglicose")
	dentro_celula = true
	
	
	
