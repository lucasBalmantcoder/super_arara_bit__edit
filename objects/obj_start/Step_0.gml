/// @description Insert description here
// You can write your code in this editor

fade_sine += 0.1;

if keyboard_check_pressed( vk_space ) {
	global.ativar_intro = true;
	//audio_play_sound( snd_confirm, 0, 0 );
	room_goto(rm_game);
}