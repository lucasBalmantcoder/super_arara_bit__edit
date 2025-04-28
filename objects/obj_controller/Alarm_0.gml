/// @description Alarm
// You can write your code in this editor

if (global.modegame1 == true){

	
	dist_create_x = 864
	var ger_obstaculo = random_range(-160, 0);

	//criando tronco de cima

	instance_create_layer(dist_create_x, ger_obstaculo + 640, "instances", obj_block_red);
	obj_up = instance_create_layer(dist_create_x, ger_obstaculo, "instances", obj_block_red);

	obj_up.image_angle = 180; 

	//reiniciar o alarme com o tempo de 1 a 3 segundos
		//melhorando o intervalo

	var tempo_minimo = 1/(1 + (global.level * 0.1));

	alarm[0] = room_speed * random_range(tempo_minimo,3);
	
}