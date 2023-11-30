/// @description Insert description here
// You can write your code in this editor

if obj_gameController.buttonMiddleVisible == true {
	visible = true
}
else {
	visible = false
}

if obj_gameController.buttonMiddlePressed == true {
	
	object_set_sprite(obj_buttonMiddle,spr_buttonMiddleLit)
	alarm[0] = 30
	
}


