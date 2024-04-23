/// @description Insert description here
// You can write your code in this editor

if currentRoom != lastRoom {
	
	audio_stop_all();
	
	if room == rm_start {
		audio_play_sound(snd_bgMainMenu,1,true,audioGain);
	}
	else if room == rm_character {
		audio_play_sound(snd_bgCharSelect,1,true,audioGain);
	}
	else if room == rm_choice {
		if obj_gameController.currentArea == 1 {
			audio_play_sound(snd_bgVillageChoice,1,true,audioGain);
		}
		else if obj_gameController.currentArea > 1 {
			audio_play_sound(snd_bgForestChoice,1,true,audioGain);
		}
	}
	else if room == rm_fight {
		if obj_gameController.currentArea == 1 {
			audio_play_sound(snd_bgVillageCombat,1,true,audioGain);
		}
		else if obj_gameController.currentArea > 1 {
			audio_play_sound(snd_bgForestCombat,1,true,audioGain);
		}
	}
	else if room == rm_challenge {
		if obj_gameController.currentArea == 1 {
			audio_play_sound(snd_bgVillageChoice,1,true,audioGain);
		}
		else if obj_gameController.currentArea > 1 {
			audio_play_sound(snd_bgForestChoice,1,true,audioGain);
		}
	}
	else if room == rm_shrine {
		if obj_gameController.currentArea == 1 {
			audio_play_sound(snd_bgVillageChoice,1,true,audioGain);
		}
		else if obj_gameController.currentArea > 1 {
			audio_play_sound(snd_bgForestChoice,1,true,audioGain);
		}
	}
	else if room == rm_reward {
		audio_play_sound(snd_bgMenu,1,true,audioGain);
	}
	else if room == rm_die{
		audio_play_sound(snd_bgDeath,1,true,audioGain);
	}
	else if room == rm_pause {
		audio_play_sound(snd_bgWind,1,true,audioGain);
	}
	else if room == rm_tutorial {
		audio_play_sound(snd_bgWind,1,true,audioGain);
	}
	
	
	
	
	
	
	if room == rm_character {
		audio_play_sound(snd_fxStartShout,10,false)
	}
	
	if lastRoom == rm_character {
		audio_play_sound(snd_fxStartGame,10,false)
	}
	
	if room == rm_pause {
		audio_play_sound(snd_fxMenuOpen,10,false,2,audioGain*1.16)
	}
	
	if lastRoom == rm_pause {
		audio_play_sound(snd_fxMenuClose,10,false,2,audioGain*1.16)
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