/// @description Insert description here
// You can write your code in this editor


// teste de commit

//adiciona velocidade vertical
vspeed = 0;

global.player_x = x;  // Armazenar a posição x do personagem
global.player_y = y;  // Armazenar a posição y do personagem

global.gravidade = false;

//temporizador para gravidade inicial
alarm[0] = game_get_speed(gamespeed_fps) * 3;