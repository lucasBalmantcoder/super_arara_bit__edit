/// @description Sistemas de pontos
// You can write your code in this editor

//imprimindo o sistema de pontos

//a função string(), converte qualquer variável para string
//a função draw(x,y, valor),imprime textos na telas
//var - variável, cria uma variável temporária
//round(variável), força a conversão de um float para int
//draw_set_color(color), muda a cor de saída de draw
draw_set_font(fnt_arial);
draw_set_color(c_white);
ajuste_x = 380
ajuste_y = -200


//usando a font personalizada

//var pontos_text = string(round(pontos));
//var t_level = string(round(global.level));
draw_set_color(-1);
//resetando a font
//motivo, pode ficar no jogo todo
//draw_set_font(-1); linha apagada, pois estava tirando o acento do (^) do a

// o ajuste de tamanho da fonte está sendo feita em : font/fnt_arial : size
if (global.debug_mode){
	
	

	draw_text((room_width/2) - ajuste_x, (room_height/2) + ajuste_y, "Distância: " + string(round(global.pontos)));
	draw_text((room_width/2) - ajuste_x, (room_height/2) + ajuste_y+20, "Level: " + string(round(global.level)));

	draw_text((room_width/2) + 300, (room_height/2) + ajuste_y, "FPS: " + string(fps));
	
	draw_set_halign(fa_right){
		draw_text((room_width/2) + ajuste_x, (room_height/2) + 200, "Y - travado: " + string(global.gravidade));
	draw_text((room_width/2) + ajuste_x, (room_height/2) + 220, "Modulo de obstaculo: " + string(global.module_game));
	}

	//draw_text(50,30, " Pontos " + pontos_text);
	//draw_text(50,50, "Nível " + t_level);
	//resetando a cor
	//reseta a cor para cor original padrão, no meu caso branco


	draw_set_color(c_white);



	// Ajusta o alinhamento horizontal para alinhamento à esquerda
	draw_set_halign(fa_left);

	// Exibindo o valor de global.player_x com o texto
	draw_text((room_width/2) - ajuste_x, (room_height/2) + 120, "[ MODO DEV ATIVO ]");
	
	
	
	draw_text((room_width/2) - ajuste_x, (room_height/2) + 160, "Total de instancias: " + string(global.cont_isntancia));
	
	draw_text((room_width/2) - ajuste_x, (room_height/2) + 200, "x - personagem: " + string(global.player_x));

	// Exibindo o valor de global.player_y com o texto
	draw_text((room_width/2) - ajuste_x, (room_height/2) + 180, "y - personagem: " + string(global.player_y));

	// Exibindo a versão com o texto
	draw_text((room_width/2) - ajuste_x, (room_height/2) + 220, "Version: " + string(global.versao));

}

// Distância entre a arara e o chão
var dist = room_height - obj_arara.y;

// Se estiver a menos de 200 pixels do chão, começa a mostrar a linha
if (dist < 200) {
    var alpha = clamp((100 - dist) / 200, 0, 1); // de 0 a 1 conforme aproxima
    //var color = merge_color(c_white, c_orange, alpha); // transição de branco pra laranja
    color = c_orange;
    draw_set_color(color);
    draw_set_alpha(alpha);
    draw_line(0, room_height - 2, room_width, room_height - 2); // linha na base da tela
    draw_set_alpha(1); // reset alpha
}
