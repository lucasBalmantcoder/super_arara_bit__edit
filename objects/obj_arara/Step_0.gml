/// @description simular gravidade 
//global.player_x = x;  // Atualizar a posição x do personagem
//global.player_y = y;  // Atualizar a posição y do personagem

//aumentar o valor de vspeed

if( gravidade  == true){
	vspeed += 0.2; 

	//limitando a velocidade  de queda
	//se a velocida for maior do que 4, então a vspeed será 4
	vqueda = 4;
	if(vspeed > vqueda){
		vspeed = vqueda;		
	}
	
	if (keyboard_check_pressed(vk_space)){
		vspeed =  -5;
	}
}
// Ajusta o angulo da ave -> rotation
image_angle = lerp(image_angle, vspeed * -10, 0.1);



// limitado de altura
// se descer muito, reinícia o jogo

if (y > 500) {
    game_restart();
} else {
    y = max(y, 20);
}



