/// @description simular gravidade 

//aumentar o valor de vspeed
vspeed += 0.2; 

//limitando a velocidade  de queda
//se a velocida for maior do que 4, então a vspeed a 4
if(vspeed > 4){
	vspeed = 4;	
	
	
}

image_angle = lerp(image_angle, vspeed * -10, 0.1);



//  >>tentativa de implementar um vento atrás da arara.

//var x_offset = -5; // Ajustar posição do vento atrás da arara
//var y_offset = random_range(-3, 3); // Pequena variação na posição do efeito

///part_particles_create(part_system, x + x_offset, y + y_offset, part_wind, 2);

	

//limitar a parte de cima do cenário
// y = eixo vertical


if y < 20{
	y = 20;
}

if (y > 500){
	game_restart()
}

