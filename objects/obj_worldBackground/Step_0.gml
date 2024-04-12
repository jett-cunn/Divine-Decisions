/// @description Insert description here
// You can write your code in this editor

if room == rm_choice {
	visible = true
}
else if room == rm_fight {
	visible = true
}
else if room == rm_challenge {
	visible = true
}
else if room == rm_shrine {
	visible = true
}
else {
	visible = false
}

if obj_gameController.currentArea == 1 {
	image_index = 0
}
if obj_gameController.currentArea > 1 {
	image_index = 1
}




