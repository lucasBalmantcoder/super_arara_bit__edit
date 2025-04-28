/// @description Insert description here
// You can write your code in this editor


map_width = 11;
map_height = 11;

// Criar a matriz do mapa corretamente
map_grid = array_create(map_height);

for (i = 0; i < map_height; i++) {
    map_grid[i] = array_create(map_width, 0);
}



// Definir manualmente o layout do mapa
var temp_grid = [
    [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1],
    [1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 1],
    [1, 0, 1, 1, 0, 0, 0, 0, 0, 0, 1],
    [1, 0, 0, 1, 1, 0, 0, 0, 0, 1, 1],
    [1, 0, 0, 0, 1, 1, 0, 0, 0, 0, 1],
    [1, 0, 0, 0, 0, 1, 1, 1, 0, 0, 1],
    [1, 0, 1, 1, 0, 0, 0, 1, 1, 0, 1],
    [1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1],
    [1, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1],
    [1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
    [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1]
];




// Copiar os valores para `map_grid`
for (i = 0; i < map_height; i++) {
    for (ix = 0; ix < map_width; ix++) {
        map_grid[i][ix] = temp_grid[i][ix];
    }
}

// Definir tamanho dos tiles
tile_width = 16;
tile_height = 8;
