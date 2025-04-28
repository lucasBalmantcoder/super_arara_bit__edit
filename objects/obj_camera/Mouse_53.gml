/// @description Insert description here
// You can write your code in this editor

if (room == rm_map) {
    scale = window_get_width() / camera_get_view_width(view_camera[0]);

    mouse_start = [window_mouse_get_x() / scale, window_mouse_get_y() / scale];
    view_start = [camera_get_view_x(view_camera[0]), camera_get_view_y(view_camera[0])];
}