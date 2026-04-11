extends Node2D

func _ready() -> void:
    pass

func _process(delta: float) -> void:
    pass

func _on_button_back_gui_input(event: InputEvent) -> void:
    if event is InputEventMouseButton:
        if event.button_index == MOUSE_BUTTON_LEFT and event.pressed:
            get_tree().change_scene_to_file("res://scene/title.tscn")
