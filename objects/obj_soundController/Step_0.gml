/// @description Insert description here
// You can write your code in this editor

if currentRoom != lastRoom {
	
	audio_stop_all();
	
	if room == rm_start || room == rm_reward || room == rm_die {
		audio_play_sound(snd_bgMenu,1,true,0.5);
	}
	else if room == rm_character {
		audio_play_sound(snd_bgChar,1,true,0.5);
	}
	else if room == rm_choice || room == rm_challenge || room == rm_shrine {
		audio_play_sound(snd_bgForest,1,true,0.5);
	}
	else if room == rm_fight {
		audio_play_sound(snd_bgFight,1,true,0.5);
	}
	
	
	if room == rm_character {
		audio_play_sound(snd_fxStartShout,10,false)
	}
	
	if lastRoom == rm_character {
		audio_play_sound(snd_fxStartGame,10,false)
	}
	
	if room == rm_pause {
		audio_play_sound(snd_fxMenuOpen,10,false,2,0.58)
	}
	
	if lastRoom == rm_pause {
		audio_play_sound(snd_fxMenuClose,10,false,2,0.58)
	}
	
}

/*
if obj_hudManager.dicePanel == true {
	if obj_gameController.diceSimVisible == true {
		if obj_gameController.alarm[1] == 180 {
			audio_play_sound(snd_fxDice,10,false)
		}
	}
}