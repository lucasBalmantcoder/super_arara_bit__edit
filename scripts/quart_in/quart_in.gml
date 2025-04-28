// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function quart_in(argument0, argument1, argument2, argument3, argument4) {
	// x, t, b, c, d
	// Ported from https://github.com/danro/jquery-easing/blob/master/jquery.easing.js
	argument1 /= argument4
	return argument3 * argument1 * argument1 * argument1 * argument1 + argument2;


}
