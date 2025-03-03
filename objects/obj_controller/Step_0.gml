 /// @description var pontuação
// You can write your code in this editor

//adicionando pontos 
pontos += 0.1 * global.level;

 //com essa alteração os pontos vão ser multiplicados de acordo com o level
 //deixando o jogo mais dinamico



//gahando pontos se os pontos forem maiores que 100
if(pontos > proximo_level){
	global.level++;
	
	//tocando som ao aumentar de level
	audio_play_sound(snd_level_up, 1, false);
	
	//aumentando o level
	proximo_level *= 2; 
}

//ajustando a velocidade do background
//pegando a layer do background
var background = layer_get_id("Background");
layer_hspeed(background, -1 -global.level);

//ajustando a velocidade do chao
var chao = layer_get_id("chao");
layer_hspeed(chao, -4 - global.level);