/// @description Insert description here
// You can write your code in this editor


// Configuração da resolução lógica
global.resolution_width = 800;
global.resolution_height = 480;
global.resolution_scale = 2;

// Tamanho da viewport (view) da room
global.view_width = global.resolution_width / global.resolution_scale;
global.view_height = global.resolution_height / global.resolution_scale;

// Tamanho real da janela (por exemplo 1280x720)
var window_target_width = 1280;
var window_target_height = 720;

// Configura o tamanho da janela real
window_set_size(window_target_width, window_target_height);
surface_resize(application_surface, window_target_width, window_target_height);

// Centralizar a janela na tela
var screen_w = display_get_width();
var screen_h = display_get_height();
var window_x = (screen_w - window_target_width) / 2;
var window_y = (screen_h - window_target_height) / 2;
window_set_position(window_x, window_y);

// Destroi a câmera antiga, se existir
if (variable_global_exists("camera")) {
    camera_destroy(global.camera);
}

// Cria uma nova câmera com o tamanho da view lógica
global.camera = camera_create_view(0, 0,global.view_width, global.view_height,0, -1, -1,
    window_target_width, window_target_height
);

// Ativa a câmera na view[0]
view_enabled = true;
view_visible[0] = true;
view_set_camera(0, global.camera);

// Ajusta a posição da câmera para centralizar a view na room, se necessário
var room_w = room_width;
var room_h = room_height;

if (room_w > global.view_width || room_h > global.view_height) {
    var cam = view_get_camera(0);
    camera_set_view_pos(cam, (room_w - global.view_width) / 2, (room_h - global.view_height) / 2);
}




