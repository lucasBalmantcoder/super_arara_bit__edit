/// @description Insert description here
// You can write your code in this editor

event_inherited();

hspeed = -4 -global.level;

//// Verifique se o objeto já atingiu a posição 600
//if (x <= 640) {
//    x = 640;  // Garante que o objeto não ultrapasse x = 600
//    hspeed = 0;  // Para o movimento horizontal
//} 

if (x <= 640 and state == "moving") {
	x = 640;
	
	//if (pair != 0) { 
    //    pair.x = 640; // Garante que os dois objetos fiquem na mesma posição X
	//	show_debug_message("entrou");
    //}
}


switch (state) {
	case "moving":
		//y += vspeed;
	
		if ( y >= 680) {
			vspeed = -1;
		}
	
		if (y <= 450){
			vspeed = 1;
		}
		clock_time += 1;
		
		if (clock_time >= room_speed * 5){
			show_debug_message("5 segundos se passaram!!!")	
		}
		
		//show_debug_message(room_speed)
	
		 
		if (clock_time >= room_speed * 2) {
		    state = "waiting";  // Muda para o estado de movimento para a esquerda
		    clock_time = 0;  // Reinicia o contador
		}
		break;
		
	case "waiting":
		// Depois de 2 segundos, move para a esquerda rapidamente
	    hspeed = -8;
		// Movendo para a esquerda rapidamente
		vspeed = 0
	    x += hspeed;
	
	
}


