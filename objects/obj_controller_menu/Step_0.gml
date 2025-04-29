/// @description Insert description here
// You can write your code in this editor
// Apenas executa se estiver no menu


// Apenas executa se estiver no menu
if (global.game_state == "menu") {
    
    // Navegação pelo menu
    if (keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up)) {
        menu_selection--;
    }
    if (keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down)) {
        menu_selection++;
    }

    // Mantém o menu_selection entre 0 e 2 (loop)
    if (menu_selection < 0) {
        menu_selection = 2;
    }
    if (menu_selection > 2) {
        menu_selection = 0;
    }

    // Ação ao pressionar Enter
    if (keyboard_check_pressed(vk_enter)) {
        switch (menu_selection) {
            case 0: // Start Game
                //global.game_state = "game";
				room_goto(rm_game);
                break;

            case 1: // Options
                global.game_state = "options";
                break;

            case 2: // Exit
                game_end();
                break;
        }
    }
}
