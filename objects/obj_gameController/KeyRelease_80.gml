/// @description Insert description here
// You can write your code in this editor

if pauseButtonTimer <= 60 { //Skip
	alarm[2] = 1
}
else { //Pause
	if room != rm_start && room != rm_character && room != rm_die {
		pausedRoom = room
		gamePaused = true
		room = rm_pause
	}
}

pauseButtonTimer = 0


