/// @description Insert description here
// You can write your code in this editor

if obj_gameController.buttonMiddleVisible == true {
	draw_set_halign(fa_center)
	draw_set_font(fnt_gothic)
	draw_set_color(c_dkgray)
	if(obj_gameController.buttonLeftTextB == ""){
		draw_set_font(fnt_gothicMedium);
	}
	draw_text(960,925,obj_gameController.buttonMiddleTextA)
	draw_text(960,945,obj_gameController.buttonMiddleTextB)
	draw_text(960,965,obj_gameController.buttonMiddleTextC)
}




