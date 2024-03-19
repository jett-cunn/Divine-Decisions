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




