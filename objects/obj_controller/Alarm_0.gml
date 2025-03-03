/// @description Alarm
// You can write your code in this editor



//criando o tronco de cima

//o y da tronco de cima
var ger_tronco = random_range(-160, 0);

//criando tronco de cima
instance_create_layer(864,ger_tronco, "instances", obj_tronco_cima);

//criando a tronco de baixo
//presico garantir que o espaço sempre seja o mesmo da tronco de cima
//nesse projeto, estou usando as coordenadas da tronco de cima e aumentando mais 640 pixl 
instance_create_layer(864, ger_tronco + 640, "instances", obj_tronco_baixo);

//reiniciar o alarme com o tempo de 1 a 3 segundos
	//melhorando o intervalo

var tempo_minimo = 1/(1 + (global.level * 0.1));



alarm[0] = room_speed * random_range(tempo_minimo,3);