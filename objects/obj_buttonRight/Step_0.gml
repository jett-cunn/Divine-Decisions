/// @description Insert description here
// You can write your code in this editor

if obj_gameController.buttonRightVisible == true {
	visible = true
}
else {
	visible = false
}

if obj_gameController.buttonRightPressed == true && alarm[0] == -1 {
	
	sprite_index = spr_buttonRightLit
	alarm[0] = 30
	
}




