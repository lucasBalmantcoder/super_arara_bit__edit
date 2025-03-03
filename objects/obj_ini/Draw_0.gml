/// @description Insert description here
// You can write your code in this editor

if (floor(current_time / 500) mod 2 == 0) {  
    draw_set_font(fnt_arial);
    draw_set_color(c_white);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(room_width / 2, room_height / 2, "Pressione espaco para comecar o jogo");
}
