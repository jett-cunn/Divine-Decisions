/// @description Insert description here
// You can write your code in this editor

if obj_gameController.gameState == 5 || obj_gameController.gameState == 8 {
	x = 960;
}
else {
	x = 1426;
}

if obj_gameController.gameState == 3 || obj_gameController.gameState == 4 || obj_gameController.gameState == 6 || obj_gameController.gameState == 7 {
	visible = false;
}
else {
	visible = true;
}

if obj_gameController.displayVideo == true {
	visible = false
}
