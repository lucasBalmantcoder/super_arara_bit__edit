/// @description Insert description here
// You can write your code in this editor


if freeze == 1 then instance_activate_all();

if freeze then freeze --;
else {
		
	if !surface_exists( sur ) then sur = surface_create( 800,640 );
	view_surface_id[ 0 ] = sur;

}

//global.screenshake = approach( global.screenshake, 0, 0.05 );