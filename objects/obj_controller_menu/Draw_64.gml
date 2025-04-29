/// @description Insert description here
// You can write your code in this editor


if (global.game_state == "menu") {
    draw_set_font(fnt_arial);
    
    var center_x = display_get_gui_width() / 2;
    var center_y = display_get_gui_height() / 2;

    // Título
    var title = "SUPER ARARA BIT";
    draw_set_color(c_white);
    draw_text(center_x - string_width(title)/2, center_y - 100, title);

    // Itens do menu
    var options = ["Start Game", "Options", "Exit"];
    
    for (var i = 0; i < array_length(options); i++) {
        // Se for a opção selecionada, muda a cor
        if (i == menu_selection) {
            draw_set_color(c_yellow);
            draw_text(center_x - string_width("> " + options[i])/2, center_y + i * 40, "> " + options[i]);
        } else {
            draw_set_color(c_white);
            draw_text(center_x - string_width(options[i])/2, center_y + i * 40, options[i]);
        }
    }
}

