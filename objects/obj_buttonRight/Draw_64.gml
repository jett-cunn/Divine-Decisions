/// @description Insert description here
// You can write your code in this editor

if obj_gameController.buttonRightVisible == true {
	draw_set_halign(fa_center)
	draw_set_font(fnt_gothic)
	draw_set_color(c_dkgray)
	if(obj_gameController.buttonLeftTextB == ""){
		draw_set_font(fnt_gothicMedium);
	}
	draw_text(1395,925,obj_gameController.buttonRightTextA)
	draw_text(1395,945,obj_gameController.buttonRightTextB)
	draw_text(1395,965,obj_gameController.buttonRightTextC)
}




