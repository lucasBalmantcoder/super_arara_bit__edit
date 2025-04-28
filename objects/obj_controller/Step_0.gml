 /// @description var pontuação
// You can write your code in this editor

//adicionando pontos 
global.pontos += 0.1 * global.level;

 //com essa alteração os pontos vão ser multiplicados de acordo com o level
 //deixando o jogo mais dinamico




// ativa o debug mode e desativa
if (keyboard_check_pressed(ord("D"))){
	if(global.debug_mode == false){
		global.debug_mode = true;
	}else{
	global.debug_mode = false;	
	}
}

// modo de game 1
if (keyboard_check_pressed(ord("1"))){
	
	if(global.modegame1 == false){
		global.modegame1 = true;
		
		global.module_game = 1;
		
		alarm[0] = room_speed;
	}else{
	global.modegame1 = false;	
	global.module_game = 0;
	}
}

// Evento Step
if (keyboard_check_pressed(ord("2"))) {
    if (global.modegame2 == false) {
        global.modegame2 = true;
        global.module_game = 2;

        // Ativando o alarm[1] apenas uma vez
        alarm[1] = room_speed;
    } else {
        global.modegame2 = false;  
        global.module_game = 0;
    }
}



//gahando pontos se os pontos forem maiores que 100
if(global.pontos > proximo_level){
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
//var chao = layer_get_id("chao");
//layer_hspeed(chao, -4 - global.level);

//verificando se existe alguma instância ativa
global.cont_isntancia = instance_number(obj_block_red);

if (instance_exists(obj_down)) {
    obj_up.y = obj_down.y - 640;  // Mantém a posição relativa entre os objetos

    //// Controle do eixo Y
    //if (keyboard_check(vk_up)) {
    //    //obj_up.y -= 5;  // Move para cima
    //    obj_down.y -= 5; // Move para cima junto
    //}
    
    //if (keyboard_check(vk_down)) {
    //    //obj_up.y += 5;  // Move para baixo
    //    obj_down.y += 5; // Move para baixo junto
    //}

    // Debug
    show_debug_message("Posição Y de obj_down: " + string(obj_down.y));
    show_debug_message("Posição Y de obj_up: " + string(obj_up.y));
} else {
    show_debug_message("obj_down não existe!");
}



 


