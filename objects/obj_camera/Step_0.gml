/// @description Insert description here
// You can write your code in this editor


mousex = window_mouse_get_x() / scale;
mousey = window_mouse_get_y() / scale;

if (mouse_start != noone) {
    var new_x = view_start[0] + (mouse_start[0] - mousex);
    var new_y = view_start[1] + (mouse_start[1] - mousey);

    camera_set_view_pos(view_camera[0], new_x, new_y);
}