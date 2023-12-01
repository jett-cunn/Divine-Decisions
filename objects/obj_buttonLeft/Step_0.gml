/// @description Insert description here
// You can write your code in this editor

if obj_gameController.buttonLeftVisible == true {
	visible = true
}
else {
	visible = false
}

if obj_gameController.buttonLeftPressed == true && alarm[0] == -1 {
	
	sprite_index = spr_buttonLeftLit
	alarm[0] = 30
	
}




