/// @description Insert description here
// You can write your code in this editor

draw_set_font( fnt_arial );
draw_set_color( c_white );
draw_set_halign( fa_center );

draw_text_ext( room_width / 2, room_height * 0.3,
    "Apresento para vocês, meu jogo, Super Arara Bit. Made by Lucas Balmant",
    -1, 200 // Espaçamento automático
);


draw_set_alpha( sign( sin( fade_sine ) ) ); // Say that 10 times fast :p
draw_text( room_width / 2, room_height * 0.6, "Press space to start!" );
draw_set_alpha( 1 );
draw_set_halign( fa_left );