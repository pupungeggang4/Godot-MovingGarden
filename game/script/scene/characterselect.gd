extends Node2D

var selected_character: int = -1

func _ready() -> void:
    var character_buttons = get_node("UI/CharacterButtons")
    for i in range(6):
        var row: int = int(i / 3)
        var col: int = i % 3
        var button = load("res://scene/uielement/characterbutton.tscn").instantiate()
        button.id = i
        button.position = Vector2(20 + 140 * col, 120 + 140 * row)
        button.size = Vector2(120, 120)
        button.button_up.connect(on_character_button_click.bind(button))
        character_buttons.add_child(button)

func _process(delta: float) -> void:
    pass

func _on_button_back_button_up() -> void:
    get_tree().change_scene_to_file("res://scene/title.tscn")
    
func _on_button_start_pressed() -> void:
    if selected_character != -1:
        get_tree().change_scene_to_file("res://scene/ready.tscn")

func on_character_button_click(button: Node) -> void:
    selected_character = button.id
