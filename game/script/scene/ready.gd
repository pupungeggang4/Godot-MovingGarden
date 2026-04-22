extends Node2D

func _on_button_menu_button_up() -> void:
    if GVar.menu == false:
        GVar.menu = true
        get_node("UI/Menu").show()
    else:
        GVar.menu = false
        get_node("UI/Menu").hide()
