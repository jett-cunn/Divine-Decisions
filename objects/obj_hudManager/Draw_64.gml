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
	draw_text(438,935,obj_gameController.buttonLeftTextA)
	draw_text(438,955,obj_gameController.buttonLeftTextB)
	draw_text(438,975,obj_gameController.buttonLeftTextC)
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
		draw_set_color(c_ltgray)
		if(obj_gameController.buttonMiddleTextB == ""){
			draw_set_font(fnt_gothicMedium)
		}
		draw_text(960,935,obj_gameController.buttonMiddleTextA)
		draw_text(960,955,obj_gameController.buttonMiddleTextB)
		draw_text(960,975,obj_gameController.buttonMiddleTextC)
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
	draw_text(room_width-438,935,obj_gameController.buttonRightTextA)
	draw_text(room_width-438,955,obj_gameController.buttonRightTextB)
	draw_text(room_width-438,975,obj_gameController.buttonRightTextC)
}
if text1 == true {
	draw_set_alpha(0.6)
	draw_set_color(borderColor1)
	draw_roundrect_ext(330,150,745,700,20,20,false)
	draw_set_color(buttonColor1)
	draw_roundrect_ext(335,155,740,695,15,15,false)
	
	draw_set_alpha(1)
	draw_set_font(fnt_plain)
	draw_set_color(c_dkgray)
	draw_set_valign(fa_middle)
	draw_set_halign(fa_center)
	draw_text_ext(537.5,425,obj_gameController.flavorTextLeft,-1,400)
	draw_set_valign(fa_top)
	draw_set_halign(fa_left)
}
if text2 == true {
	draw_set_alpha(0.6)
	draw_set_color(borderColor2)
	draw_roundrect_ext(752,150,room_width-752,700,20,20,false)
	draw_set_color(buttonColor2)
	draw_roundrect_ext(757,155,room_width-757,695,15,15,false)
	
	draw_set_alpha(1)
	draw_set_font(fnt_plain)
	draw_set_color(c_ltgray)
	draw_set_valign(fa_middle)
	draw_set_halign(fa_center)
	draw_text_ext(960,425,obj_gameController.flavorTextMiddle,-1,400)
	draw_set_valign(fa_top)
	draw_set_halign(fa_left)
}
if text3 == true {
	draw_set_alpha(0.6)
	draw_set_color(borderColor3)
	draw_roundrect_ext(room_width-330,150,room_width-745,700,20,20,false)
	draw_set_color(buttonColor3)
	draw_roundrect_ext(room_width-335,155,room_width-740,695,15,15,false)
	
	draw_set_alpha(1)
	draw_set_font(fnt_plain)
	draw_set_color(c_gray)
	draw_set_valign(fa_middle)
	draw_set_halign(fa_center)
	draw_text_ext(room_width-537.5,425,obj_gameController.flavorTextRight,-1,400)
	draw_set_valign(fa_top)
	draw_set_halign(fa_left)
}
if playerHealth == true {
	pHealthBarX = 32
	pHealthBarY = 608
	
	draw_set_color(c_green)
	draw_roundrect_ext(pHealthBarX,pHealthBarY,pHealthBarX+471,pHealthBarY+193,10,10,false)
	draw_set_color(c_ltgrey)
	draw_roundrect_ext(pHealthBarX+5,pHealthBarY+5,pHealthBarX+466,pHealthBarY+188,5,5,false)
	
	draw_healthbar(pHealthBarX+25,pHealthBarY+98,pHealthBarX+448,pHealthBarY+105,obj_gameController.playerHealthPercentage,c_grey,c_red,c_lime,0,true,true);


	draw_set_font(fnt_plain);
	draw_set_halign(fa_left);

	draw_set_color(c_green);
	draw_text(pHealthBarX+25,pHealthBarY+120, string(obj_gameController.playerCurrentHealth) + " / " + string(obj_gameController.playerMaxHealth))
	
	draw_set_color(c_black);
	draw_text(pHealthBarX+10,pHealthBarY+10, "CHAMPION")
	if (obj_gameController.gameState == 136 && obj_gameController.playerActionChoice == 1) || obj_gameController.gameState == 150 {
	
		draw_set_color(c_lime);
		draw_text(pHealthBarX+150, pHealthBarY+40, string(obj_gameController.playerAgilityRoll));
		
		draw_set_color(c_green);
		draw_text(pHealthBarX+180, pHealthBarY+40, "- " + string(obj_gameController.enemySpeedRoll));
		
		draw_set_color(c_green)
		if obj_gameController.playerAgilityRoll > obj_gameController.enemySpeedRoll {
			draw_text(pHealthBarX+220, pHealthBarY+40, "= Escape")
		}
		else {
			draw_text(pHealthBarX+220, pHealthBarY+40, "= Fail")
		}
		
	}

	if obj_gameController.gameState == 132 && obj_gameController.fightTurn1 == false {
	
		if obj_gameController.playerGuarded == 0 {
			draw_set_color(c_red);
			draw_text(pHealthBarX+150, pHealthBarY+40, string(obj_gameController.enemyAttackRoll));
			
			draw_set_color(c_blue);
			draw_text(pHealthBarX+180, pHealthBarY+40, "- " + string(obj_gameController.playerEnduranceRoll));
			
		draw_set_color(c_green	)
		draw_text(pHealthBarX+220, pHealthBarY+40, "= " + string(obj_gameController.enemyDamageRoll) + " Damage");	

		}
		else if obj_gameController.playerGuarded == 1 {
			draw_set_color(c_red);
			draw_text(pHealthBarX+150, pHealthBarY+40, string(obj_gameController.enemyAttackRoll));
			
			draw_set_color(c_blue);
			draw_text(pHealthBarX+180, pHealthBarY+40, "- " + string(obj_gameController.playerEnduranceRoll));
			
			draw_set_color(c_maroon);
			draw_text(pHealthBarX+220, pHealthBarY+40, "- " + string(obj_gameController.playerAttackRoll));
			
			draw_set_color(c_green)
			draw_text(pHealthBarX+260, pHealthBarY+40, "= " + string(obj_gameController.enemyDamageRoll) + " Damage");
		}
		
	}

	if obj_gameController.gameState > 165 && obj_gameController < 168 {
		
		if obj_gameController.playerChallengeStatChosen == 1 {
			draw_set_color(c_green)
		}
		else if obj_gameController.playerChallengeStatChosen == 2 {
			draw_set_color(c_blue)
		}
		else if obj_gameController.playerChallengeStatChosen == 3 {
			draw_set_color(c_red)
		}
		draw_text(pHealthBarX+125, pHealthBarY+40, string(obj_gameController.playerChallengeRoll))
		
		
		if obj_gameController.gameState == 166 {
			draw_set_color(c_lime)
			draw_text(pHealthBarX+155, pHealthBarY+40, ">")
		}
		else {
			draw_set_color(c_maroon)
			draw_text(pHealthBarX+155, pHealthBarY+40, "<")
		}
		
		
		draw_set_color(c_black)
		draw_text(pHealthBarX+170,pHealthBarY+40, string(obj_gameController.challengeSelectedDC))
		
		
	}
}
if enemyHealth == true {
	eHealthBarX = 1408
	eHealthBarY = 96
	
	draw_set_color(c_maroon)
	draw_roundrect_ext(eHealthBarX,eHealthBarY,eHealthBarX+471,eHealthBarY+193,10,10,false)
	draw_set_color(c_ltgrey)
	draw_roundrect_ext(eHealthBarX+5,eHealthBarY+5,eHealthBarX+466,eHealthBarY+188,5,5,false)
	
	draw_healthbar(eHealthBarX+25,eHealthBarY+98,eHealthBarX+448,eHealthBarY+105,obj_gameController.enemyHealthPercentage,c_grey,c_red,c_lime,1,true,true);


	draw_set_font(fnt_plain);
	draw_set_halign(fa_left);

	draw_set_color(c_red);
	draw_text(eHealthBarX+25,eHealthBarY+120, string(obj_gameController.enemyCurrentHealth) + " / " + string(obj_gameController.enemyMaxHealth))
	
	if obj_gameController.enemyType == 1 {
		enemyName = "Wolf"
	}
	else if obj_gameController.enemyType == 2 {
		enemyName = "Goblin"
	}
	else if obj_gameController.enemyType == 3 {
		enemyName = "Cultist"
	}
	else if obj_gameController.enemyType == 4 {
		enemyName = "Bandit Leader"
	}
	draw_set_color(c_black);
	draw_text(eHealthBarX+10,eHealthBarY+10, enemyName)
	
	if (obj_gameController.gameState == 136 && obj_gameController.playerActionChoice == 3) || obj_gameController.gameState == 151 {
	
		draw_set_color(c_red);
		draw_text(eHealthBarX+150, eHealthBarY+40, string(obj_gameController.playerAttackRoll));
		
		draw_set_color(c_blue);
		draw_text(eHealthBarX+180, eHealthBarY+40, "- " + string(obj_gameController.enemyDefenseRoll));
		
		draw_set_color(c_green)
		draw_text(eHealthBarX+220, eHealthBarY+40, "= " + string(obj_gameController.playerDamageValue) + " Damage")
	
	}
}
if timer == true {
	timerX1 = 1509
	timerX2 = 1627
	timerY1 = 709
	timerY2 = 827
	draw_set_color(c_dkgray)
	draw_roundrect_ext(timerX1-5,timerY1-5,timerX2+5,timerY2+5,5,5,false)
	draw_set_color(c_ltgray)
	draw_rectangle(timerX1,timerY1,timerX2,timerY2,false)
	draw_healthbar(timerX1+5,timerY1+5,timerX2-5,timerY2-5,obj_gameController.timerPercentage,c_dkgray,c_red,c_green,3,true,false)
	draw_triangle(timerX1,timerY1,timerX1,timerY2,timerX1+20,timerY1+64,false)
	draw_triangle(timerX2,timerY1,timerX2,timerY2,timerX2-20,timerY1+64,false)
	draw_triangle(timerX1,timerY1+40,timerX1,timerY2-40,timerX1+40,timerY1+64,false)
	draw_triangle(timerX2,timerY1+40,timerX2,timerY2-40,timerX2-40,timerY1+64,false)	
}


