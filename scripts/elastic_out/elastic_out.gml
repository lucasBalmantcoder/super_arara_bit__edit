// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function elastic_out(argument0, argument1, argument2, argument3, argument4) {
	// x, t, b, c, d
	// Ported from https://github.com/danro/jquery-easing/blob/master/jquery.easing.js
	var s = 1.70158,
		p = 0,
		a = argument3;

	if ( argument1 == 0 ) then return argument2;

	argument1 /= argument4;

	if ( argument1 == 1 ) return argument2 + argument3;
	if !p then p = argument4 * 0.3;

	if ( a < abs( argument3 ) ) {
	
		a = argument3;
		s = p / 4;
	
	} else s = p / ( 2 * pi ) * arcsin( argument3 / a );

	return a * power( 2, -10 * argument1 ) * sin( ( argument1 * argument4 - s ) * ( 2 * pi ) / p ) + argument3 + argument2;


}
