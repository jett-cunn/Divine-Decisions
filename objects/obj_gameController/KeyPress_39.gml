/// @description Insert description here
// You can write your code in this editor
if !alarm_get(0) > 0 {
	buttonRight = 1;
	audio_play_sound(snd_fxButtonSelect,10,false)
}

