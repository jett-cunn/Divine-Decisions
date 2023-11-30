/// @description Insert description here
// You can write your code in this editor

if obj_gameController.buttonLeftVisible == true {
	draw_set_halign(fa_center)
	draw_set_font(fnt_gothic)
	draw_set_color(c_dkgray)
	if(obj_gameController.buttonLeftTextB == ""){
		draw_set_font(fnt_gothicMedium)
	}
	draw_text(525,925,obj_gameController.buttonLeftTextA)
	draw_text(525,945,obj_gameController.buttonLeftTextB)
	draw_text(525,965,obj_gameController.buttonLeftTextC)
}




