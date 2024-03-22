/// @description Insert description here
// You can write your code in this editor

if progressBar == true {
	
	
	draw_set_color(c_ltgray)
	draw_rectangle(300,5,room_width-300,75,false)
	draw_triangle(265,5,300,5,300,75,false)
	draw_triangle(room_width-265,5,room_width-300,5,room_width-300,75,false)
	
	draw_set_color(c_dkgray)
	draw_line_width(265,5,room_width-265,5,10)
	draw_line_width(300,75,room_width-300,75,10)
	draw_line_width(265,5,300,75,10)
	draw_line_width(room_width-265,5,room_width-300,75,10)
	
	draw_circle(265,5,5,false)
	draw_circle(room_width-265,5,5,false)
	draw_circle(300,75,5,false)
	draw_circle(room_width-300,75,5,false)
	
	
	maxScore = obj_gameController.winTotal
	barStart = 335
	barEnd = room_width-335
	barLength = barEnd - barStart
	zoneX = barStart
	zoneY = 40
	zoneSize = (barLength/maxScore)
	
	draw_line_width(barStart,40,barEnd,40,15)
	draw_set_color(c_green)
	draw_line_width(barStart,40,(barStart+(zoneSize*score)),40,15)
	
	for (var i = 0; i <= maxScore; i += 1) {
		
		draw_set_color(c_dkgray)
		draw_circle(zoneX,zoneY,15,false)
		
		if i <= score {
			draw_set_color(c_lime)
		}
		else {
			draw_set_color(c_ltgray)
		}
		draw_circle(zoneX,zoneY,10,false)
		
		zoneX += zoneSize
		
	}
	
}

if buttonBar == true {
	
	outlineColor = make_color_rgb(40,40,40)
	bodyColor1 = make_color_rgb(80,80,80)
	bodyColor2 = make_color_rgb(90,90,90)
	bodyColor3 = make_color_rgb(100,100,100)
	bodyColor4 = make_color_rgb(110,110,110)
	bodyColor5 = make_color_rgb(120,120,120)
	
	
	draw_set_color(outlineColor)
	draw_roundrect_ext(150,830,room_width-150,1080,40,40,false)
	draw_set_color(bodyColor1)
	draw_roundrect_ext(160,840,room_width-160,1070,30,30,false)
	draw_set_color(bodyColor5)
	draw_roundrect_ext(160,840,room_width-165,1065,30,30,false)
	draw_set_color(bodyColor2)
	draw_roundrect_ext(165,845,room_width-165,1065,30,30,false)
	draw_set_color(bodyColor4)
	draw_roundrect_ext(165,845,room_width-170,1060,30,30,false)
	draw_set_color(bodyColor3)
	draw_roundrect_ext(170,850,room_width-170,1060,30,30,false)
}

if button1 == true {
	borderColor1 = make_color_rgb(13, 84, 18)
	borderColorLit = make_color_rgb(49, 184, 196)
	buttonColor1 = make_color_rgb(28, 186, 39)
	
	if obj_gameController.buttonLeftPressed == true {
		draw_set_color(borderColorLit)
	}
	else {
		draw_set_color(borderColor1)
	}
	draw_roundrect_ext(180,860,695,1050,10,10,false)
	
	draw_set_color(buttonColor1)
	draw_roundrect_ext(185,865,690,1045,5,5,false)
	
	
	draw_set_halign(fa_center)
	draw_set_font(fnt_gothic)
	draw_set_color(c_dkgray)
	if(obj_gameController.buttonLeftTextB == ""){
		draw_set_font(fnt_gothicMedium)
	}
	draw_text(438,925,obj_gameController.buttonLeftTextA)
	draw_text(438,945,obj_gameController.buttonLeftTextB)
	draw_text(438,965,obj_gameController.buttonLeftTextC)
}
if button2 == true {
	borderColor2 = make_color_rgb(11, 25, 74)
	borderColorLit = make_color_rgb(49, 184, 196)
	buttonColor2 = make_color_rgb(28, 62, 186)
	
	if obj_gameController.buttonMiddleVisible == true {
		if obj_gameController.buttonMiddlePressed == true {
			draw_set_color(borderColorLit)
		}
		else {
			draw_set_color(borderColor2)
		}
		draw_roundrect_ext(702,860,room_width-702,1050,10,10,false)
		draw_set_color(buttonColor2)
		draw_roundrect_ext(707,865,room_width-707,1045,5,5,false)
		
		
		draw_set_halign(fa_center)
		draw_set_font(fnt_gothic)
		draw_set_color(c_dkgray)
		if(obj_gameController.buttonMiddleTextB == ""){
			draw_set_font(fnt_gothicMedium)
		}
		draw_text(960,925,obj_gameController.buttonMiddleTextA)
		draw_text(960,945,obj_gameController.buttonMiddleTextB)
		draw_text(960,965,obj_gameController.buttonMiddleTextC)
	}
}
if button3 == true {
	borderColor3 = make_color_rgb(89, 19, 15)
	borderColorLit = make_color_rgb(49, 184, 196)
	buttonColor3 = make_color_rgb(184, 39, 31)
	
	if obj_gameController.buttonRightPressed == true {
		draw_set_color(borderColorLit)
	}
	else {
		draw_set_color(borderColor3)
	}
	draw_roundrect_ext(room_width-180,860,room_width-695,1050,10,10,false)
	draw_set_color(buttonColor3)
	draw_roundrect_ext(room_width-185,865,room_width-690,1045,5,5,false)
	
	draw_set_halign(fa_center)
	draw_set_font(fnt_gothic)
	draw_set_color(c_dkgray)
	if(obj_gameController.buttonRightTextB == ""){
		draw_set_font(fnt_gothicMedium)
	}
	draw_text(room_width-438,925,obj_gameController.buttonRightTextA)
	draw_text(room_width-438,945,obj_gameController.buttonRightTextB)
	draw_text(room_width-438,965,obj_gameController.buttonRightTextC)
}




