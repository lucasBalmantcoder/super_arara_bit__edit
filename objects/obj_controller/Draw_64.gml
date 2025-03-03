/// @description Sistemas de pontos
// You can write your code in this editor

//imprimindo o sistema de pontos

//a função string(), converte qualquer variável para string
//a função draw(x,y, valor), imprime textos na telas
//var - variável, cria uma variável temporária
//round(variável), força a conversão de um float para int
//draw_set_color(color), muda a cor de saída de draw
draw_set_color(c_white);
//usando a font personalizada
draw_set_font(fnt_pontos);
var pontos_text = string(round(pontos));
var t_level = string(round(global.level));

draw_text(50,30, " Pontos " + pontos_text);
draw_text(50,50, "Nivel " + t_level);
//resetando a cor
//reseta a cor para cor original padrão, no meu caso branco
draw_set_color(-1);
//resetando a font
//motivo, pode ficar no jogo todo
draw_set_font(-1);

draw_set_color(c_white);
draw_text((room_width/2)-300, (room_height/2)+200, "Version: " + global.versao);
