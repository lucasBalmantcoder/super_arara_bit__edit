/// @description Insert description here
// You can write your code in this editor


cam    = camera_create_view( 0, 0, 800, 640, 0, -1, -1, -1, 32, 32 );
sur    = -1;
freeze = 0;

view_enabled      = true;
view_visible[ 0 ] = true;
view_wport  [ 0 ] = 800;
view_hport  [ 0 ] = 640;

view_set_camera( 0, cam );
window_set_size( 800 * 2, 640 * 2 );
application_surface_draw_enable( false );
display_set_gui_size( 800, 640 );

camera_set_begin_script( view_camera[ 0 ], update_camera );

//global.screenshake = approach( global.screenshake, 0, 0.05 );