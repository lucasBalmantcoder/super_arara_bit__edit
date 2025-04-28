/// @description Insert description here
// You can write your code in this editor

/// @description Renderiza o mapa isométrico

for (var z = 0; z < map_height; z++) {
    for (var i = 0; i < map_width; i++) {
        var tile_value = map_grid[z][i];

        // Cálculo da posição do tile
        var scr_x = (i - z) * (tile_width / 2) + room_width / 2 - (tile_width / 2);
        var scr_y = (i + z) * (tile_height / 2);

        // Desenha o tile de base
        draw_sprite(spr_camp, tile_value, scr_x, scr_y);
        draw_sprite_ext(spr_s_tile, 1, scr_x, scr_y, 1, 1, 0, c_white, 0.1);

        // Transformação das coordenadas do mouse para isométrico
        var local_x = mouse_x - scr_x;
        var local_y = mouse_y - scr_y;

        // Verifica se o mouse está dentro do losango isométrico
        var margin = 0.9;  // Diminui 10% da área sensível

        if (abs(local_x / ((tile_width / 2) * margin)) + abs(local_y / ((tile_height / 2) * margin)) <= 1) {
            // Desenha o tile de destaque com transparência
            draw_sprite_ext(spr_s_tile, 0, scr_x, scr_y, 1, 1, 0, c_white, 0.6);
            
            // Verifica clique do mouse
            if (mouse_check_button_pressed(mb_left)) {
                if (i == 2 && z == 8) {  // Coordenada do tile desejado (ajuste conforme necessário)
                    room_goto(rm_menu);  // Troca para a fase desejada
                }
            }
        }
    }
}







