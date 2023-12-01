/// @description Insert description here
// You can write your code in this editor

if obj_gameController.buttonMiddleVisible == true {
	visible = true
}
else {
	visible = false
}

if obj_gameController.buttonMiddlePressed == true && alarm[0] == -1 {
	
	sprite_index = spr_buttonMiddleLit
	alarm[0] = 30
	
}


