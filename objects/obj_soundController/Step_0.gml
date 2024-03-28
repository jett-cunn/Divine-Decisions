/// @description Insert description here
// You can write your code in this editor

if currentRoom != lastRoom {
	
	audio_stop_all();
	
	if room == rm_start || room == rm_reward || room == rm_die {
		audio_play_sound(snd_bgMenu,1,true);
	}
	else if room == rm_character {
		audio_play_sound(snd_bgChar,1,true);
	}
	else if room == rm_choice || room == rm_challenge || room == rm_shrine {
		audio_play_sound(snd_bgForest,1,true);
	}
	else if room == rm_fight {
		audio_play_sound(snd_bgFight,1,true);
	}
	
}