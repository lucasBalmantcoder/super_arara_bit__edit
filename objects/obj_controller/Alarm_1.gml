/// @description Insert description here
// You can write your code in this editor


//criação no obj_controle:
if (global.modegame2 == true){
	
	show_debug_message("alarme 2")
	
	obj = obj_block_blue

	dist_create_x = 864
	
	//var ger_obstaculo = random_range(420, 680);
	var ger_obstaculo = random_range(-240, 0);
	show_debug_message(ger_obstaculo)


	obj_down = instance_create_layer(dist_create_x, ger_obstaculo + 640, "instances", obj);
	//if (obj_down){
	//	obj_down = true	
	//} else {
	//	obj_down = noone;	
	//}
	obj_up = instance_create_layer(dist_create_x, ger_obstaculo, "instances", obj);
	obj_up.image_angle = 180;
	
	//if (obj_down != noone) {
    //    obj_up.y = obj_down.y - 640;
    //    show_debug_message("Posição Y de obj_down: " + string(obj_down.y));
    //    show_debug_message("Posição Y de obj_up: " + string(obj_up.y));
    //} else {
    //    show_debug_message("obj_down não foi criado corretamente.");
    //}
	
	//obj_up.y = obj_down.y + 50;
	
	// Garantindo que obj_down e obj_up não sejam noone antes de acessar
    //if (obj_down != noone && obj_up != noone) {
    //    obj_up.y = obj_down.y + 50;  // Ajustando o y de obj_up em relação ao obj_down
	//}
	
	//show_debug_message(obj_up.id)
	
	
	 // Associando os objetos

	//reiniciar o alarme com o tempo de 1 a 3 segundos
	//var tempo_minimo = 1/(1 + (global.level * 0.1));

	//alarm[1] = room_speed * random_range(tempo_minimo,3);
	
}