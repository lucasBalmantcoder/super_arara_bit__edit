/// @description create var static fund
// You can write your code in this editor

//definindo a versão do jogo globalmente.
global.versao = "0.1.1 alpha";

// var global de debug mode
global.debug_mode = true;

// var que conta as intancias de obj
global.cont_isntancia = 0;

//define obs do game
global.modegame1 = false;
global.modegame2 = false;

//var global
global.module_game = 0;

alarm[0] = room_speed;

global.pontos = 0;

global.level = 1;

proximo_level = 100;

// adicione o arquivo de música na pasta snd, depois com o comando a abaixo add. ela no jogo

//exemplo:
//audio_play_sound(snd_musica_fundo, 1, true);
//obj_down = noone

obj_down = noone;
obj_up = noone;