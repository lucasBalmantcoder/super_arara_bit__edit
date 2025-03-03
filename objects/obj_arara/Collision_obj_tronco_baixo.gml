/// @description Insert description here

//  You can write your code in this editor

//se o jogador colidir com tronco,o jogo reinícia

//audio_play_sound(snd_dano,1 ,false);


if (!global.gameOver) {
	
    global.gameOver = true;
    //instance_deactivate_all(true); 
	// Desativa todas as instâncias, exceto a atual
    
    alarm[0] = room_speed; // Espera 1 segundo antes de reiniciar
	
}                          