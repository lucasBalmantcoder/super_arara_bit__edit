/// @description Insert description here
// You can write your code in this editor
view_enabled = true;
view_visible[0] = true;

view_xport[0] = 0;
view_yport[0] = 0;
view_wport[0] = 800;  // Largura da janela, não será alterada
view_hport[0] = 450;  // Altura da janela, não será alterada

window_set_size(800, 450);  // Tamanho da janela do GameMaker (não muda com o zoom)

var zoom_factor = 2;  // Quanto maior, mais zoom você terá (1 = sem zoom, 2 = zoom 2x, etc.)

// Aumentando o tamanho da área visível da câmera, fazendo zoom
view_camera[0] = camera_create_view((room_width / 2) - 80, -2, 341 / zoom_factor, 192 / zoom_factor, obj_map);

// Ajuste do tamanho da superfície para se ajustar ao novo zoom
surface_resize(application_surface, 1365, 768);

scale = window_get_width() / camera_get_view_width(view_camera[0]);

mouse_start = noone;
view_start = noone;
