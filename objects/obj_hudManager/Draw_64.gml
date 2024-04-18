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
	draw_set_valign(fa_middle)
	draw_set_font(fnt_plainLarge)
	draw_set_color(c_dkgray)
	
	
	draw_text(438,955,obj_gameController.buttonLeftTextB)
	
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
		draw_set_valign(fa_middle)
		draw_set_font(fnt_plainLarge)
		draw_set_color(c_ltgray)
		
		
		draw_text(960,955,obj_gameController.buttonMiddleTextB)
		
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
	draw_set_valign(fa_middle)
	draw_set_font(fnt_plainLarge)
	draw_set_color(c_dkgray)
	
	
	draw_text(room_width-438,955,obj_gameController.buttonRightTextB)
	
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
	if room = rm_choice {
		pHealthBarY = 880
	}
	else {
		pHealthBarY = 683
	}
	
	
	draw_set_color(c_green)
	draw_roundrect_ext(pHealthBarX,pHealthBarY,pHealthBarX+471,pHealthBarY+143,10,10,false)
	draw_set_color(c_ltgrey)
	draw_roundrect_ext(pHealthBarX+5,pHealthBarY+5,pHealthBarX+466,pHealthBarY+138,5,5,false)
	
	draw_healthbar(pHealthBarX+25,pHealthBarY+68,pHealthBarX+448,pHealthBarY+85,obj_gameController.playerHealthPercentage,c_dkgrey,c_red,c_lime,0,true,true);


	draw_set_font(fnt_plain);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_green);
	draw_text(pHealthBarX+25,pHealthBarY+95, string(obj_gameController.playerCurrentHealth) + " / " + string(obj_gameController.playerMaxHealth))
	
	draw_set_color(c_black);
	draw_text(pHealthBarX+10,pHealthBarY+10, "Champion of " + obj_gameController.playerName)
}
if enemyHealth == true {
	eHealthBarX = 1408
	eHealthBarY = 96
	
	draw_set_color(c_maroon)
	draw_roundrect_ext(eHealthBarX,eHealthBarY,eHealthBarX+471,eHealthBarY+143,10,10,false)
	draw_set_color(c_ltgrey)
	draw_roundrect_ext(eHealthBarX+5,eHealthBarY+5,eHealthBarX+466,eHealthBarY+138,5,5,false)
	
	draw_healthbar(eHealthBarX+25,eHealthBarY+68,eHealthBarX+448,eHealthBarY+85,obj_gameController.enemyHealthPercentage,c_dkgrey,c_red,c_lime,1,true,true);


	draw_set_font(fnt_plain);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_red);
	draw_text(eHealthBarX+25,eHealthBarY+95, string(obj_gameController.enemyCurrentHealth) + " / " + string(obj_gameController.enemyMaxHealth))
	
	if obj_gameController.enemyType == 1 {
		enemyName = "Crazed Villager"
	}
	else if obj_gameController.enemyType == 2 {
		enemyName = "Goblin"
	}
	else if obj_gameController.enemyType == 3 {
		enemyName = "Wolf"
	}
	else if obj_gameController.enemyType == 4 {
		enemyName = "Bandit"
	}
	else if obj_gameController.enemyType == 5 {
		enemyName = "Cultist"
	}
	else if obj_gameController.enemyType == 6 {
		enemyName = "Bandit Leader"
	}
	else if obj_gameController.enemyType == 7 {
		enemyName = "Dragon of Darkness"
	}
	draw_set_color(c_black);
	draw_text(eHealthBarX+10,eHealthBarY+10, enemyName)
}
if timer == true {
		timerX1 = 1509
		timerX2 = 1627
	if room == rm_choice {
		timerY1 = 887
		timerY2 = 1005
	}
	else {
		
		timerY1 = 709
		timerY2 = 827
	}
	
	draw_set_color(c_dkgray)
	draw_roundrect_ext(timerX1-5,timerY1-5,timerX2+5,timerY2+5,5,5,false)
	draw_set_color(c_ltgray)
	draw_rectangle(timerX1,timerY1,timerX2,timerY2,false)
	draw_healthbar(timerX1+5,timerY1+5,timerX2-5,timerY2-5,obj_gameController.timerPercentage,c_dkgray,c_red,c_green,3,true,false)
	draw_triangle(timerX1,timerY1,timerX1,timerY2,timerX1+20,timerY1+61,false)
	draw_triangle(timerX2,timerY1,timerX2,timerY2,timerX2-20,timerY1+61,false)
	draw_triangle(timerX1,timerY1+40,timerX1,timerY2-40,timerX1+40,timerY1+61,false)
	draw_triangle(timerX2,timerY1+40,timerX2,timerY2-40,timerX2-40,timerY1+61,false)	
}
if inventory == true {
	
	drawColumn = 1685
	drawLine = 0
	charmName = ""
	armorName = ""
	bootsName = ""
	weaponName = ""

	if obj_gameController.playerCharmBonus == 1 {
		charmName = "Symbolic Ink (+1)"
	}
	else if obj_gameController.playerCharmBonus == 2 {
		charmName = "Shrine Charm (+2)"
	}
	else if obj_gameController.playerCharmBonus == 3 {
		charmName = "Talisman (+3)"
	}
	else if obj_gameController.playerCharmBonus == 4 {
		charmName = "Ench. Ink (+4)"
	}
	else if obj_gameController.playerCharmBonus == 5 {
		charmName = "Ench. Charm (+5)"
	}
	else if obj_gameController.playerCharmBonus == 6 {
		charmName = "Ench. Talisman (+6)"
	}
	else {
		charmName = ""
	}

	if obj_gameController.playerArmorBonus == 1 {
		armorName = "Cuirass (+1)"
	}
	else if obj_gameController.playerArmorBonus == 2 {
		armorName = "Chainmail (+2)"
	}
	else if obj_gameController.playerArmorBonus == 3 {
		armorName = "Plate Armor (+3)"
	}
	else if obj_gameController.playerArmorBonus == 4 {
		armorName = "Ench. Cuirass (+4)"
	}
	else if obj_gameController.playerArmorBonus == 5 {
		armorName = "Ench. Mail (+5)"
	}
	else if obj_gameController.playerArmorBonus == 6 {
		armorName = "Ench. Plate (+6)"
	}
	else {
		armorName = ""
	}

	if obj_gameController.playerBootBonus == 1 {
		bootsName = "Turnsole Shoes (+1)"
	}
	else if obj_gameController.playerBootBonus == 2 {
		bootsName = "Short Boots (+2)"
	}
	else if obj_gameController.playerBootBonus == 3 {
		bootsName = "Warrior Boots (+3)"
	}
	else if obj_gameController.playerBootBonus == 4 {
		bootsName = "Ench. Turnsoles (+4)"
	}
	else if obj_gameController.playerBootBonus == 5 {
		bootsName = "Ench. Boots (+5)"
	}
	else if obj_gameController.playerBootBonus == 6 {
		bootsName = "Ench. Sabatons (+6)"
	}
	else {
		bootsName = ""
	}


	if obj_gameController.playerWeaponStat == 1 {
		if obj_gameController.playerWeaponBonus == 1 {
			weaponName = "Dagger (+1)"
		}
		else if obj_gameController.playerWeaponBonus == 2 {
			weaponName = "Sword (+2)"
		}
		else if obj_gameController.playerWeaponBonus == 3 {
			weaponName = "Greataxe (+3)"
		}
		else if obj_gameController.playerWeaponBonus == 4 {
			weaponName = "Ench. Dagger (+4)"
		}
		else if obj_gameController.playerWeaponBonus == 5 {
			weaponName = "Ench. Sword (+5)"
		}
		else if obj_gameController.playerWeaponBonus == 6 {
			weaponName = "Ench. Axe (+6)"
		}
	}
	else if obj_gameController.playerWeaponStat == 2 {
			if obj_gameController.playerWeaponBonus == 1 {
			weaponName = "Tome (+1)"
		}
		else if obj_gameController.playerWeaponBonus == 2 {
			weaponName = "Wand (+2)"
		}
		else if obj_gameController.playerWeaponBonus == 3 {
			weaponName = "Staff (+3)"
		}
		else if obj_gameController.playerWeaponBonus == 4 {
			weaponName = "Ench. Tome (+4)"
		}
		else if obj_gameController.playerWeaponBonus == 5 {
			weaponName = "Ench. Wand (+5)"
		}
		else if obj_gameController.playerWeaponBonus == 6 {
			weaponName = "Ench. Staff (+6)"
		}
	}
	else if obj_gameController.playerWeaponStat == 3 {
			if obj_gameController.playerWeaponBonus == 1 {
			weaponName = "Flute (+1)"
		}
		else if obj_gameController.playerWeaponBonus == 2 {
			weaponName = "Drum (+2)"
		}
		else if obj_gameController.playerWeaponBonus == 3 {
			weaponName = "Harp (+3)"
		}
		else if obj_gameController.playerWeaponBonus == 4 {
			weaponName = "Ench. Flute (+4)"
		}
		else if obj_gameController.playerWeaponBonus == 4 {
			weaponName = "Ench. Lute (+4)"
		}
		else if obj_gameController.playerWeaponBonus == 4 {
			weaponName = "Ench. Harp (+4)"
		}
	}
	else {
		weaponName = ""
	}
	
	draw_set_color(c_dkgray)
	draw_roundrect_ext(1675,300,1920,690,5,5,false)
	draw_set_color(c_ltgray)
	draw_rectangle(1680,305,1915,685,false)
	
	draw_set_color(c_maroon)
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	
	drawLine = 310
	
	draw_set_font(fnt_plain)
	draw_text(drawColumn,drawLine,"Charm:")
	drawLine += 25
	draw_set_font(fnt_plainSmall)
	draw_text(drawColumn,drawLine, string(charmName))
	drawLine += 17
	draw_text(drawColumn,drawLine,"Vitality: " + string(obj_gameController.playerVitalityTotal))
	drawLine += 30
	
	draw_set_font(fnt_plain)
	draw_text(drawColumn,drawLine,"Armor:")
	drawLine += 25
	draw_set_font(fnt_plainSmall)
	draw_text(drawColumn,drawLine, string(armorName))
	drawLine += 17
	draw_text(drawColumn,drawLine,"Endurance: " + string(obj_gameController.playerEnduranceTotal))
	drawLine += 30
	
	draw_set_font(fnt_plain)
	draw_text(drawColumn,drawLine,"Boots:")
	drawLine += 25
	draw_set_font(fnt_plainSmall)
	draw_text(drawColumn,drawLine, string(bootsName))
	drawLine += 17
	draw_text(drawColumn,drawLine,"Agility: " + string(obj_gameController.playerAgilityTotal))
	drawLine += 30
	
	draw_set_font(fnt_plain)
	draw_text(drawColumn,drawLine,"Weapon:")
	drawLine += 25
	draw_set_font(fnt_plainSmall)
	draw_text(drawColumn,drawLine, string(weaponName))
	drawLine += 17
	if obj_gameController.playerWeaponStat == 1 {
		draw_text(drawColumn,drawLine,"Strength: " + string(obj_gameController.playerStrengthTotal))
		drawLine += 30
	}
	else if obj_gameController.playerWeaponStat == 2 {
		draw_text(drawColumn,drawLine,"Intelligence: " + string(obj_gameController.playerIntelligenceTotal))
		drawLine += 30
	}
	else if obj_gameController.playerWeaponStat == 3 {
		draw_text(drawColumn,drawLine,"Compassion: " + string(obj_gameController.playerCompassionTotal))
		drawLine += 30
	}
	
	if obj_gameController.playerWeaponStat == 1 {
		draw_text(drawColumn,drawLine,"Intelligence: " + string(obj_gameController.playerIntelligenceTotal))
		drawLine += 30
		draw_text(drawColumn,drawLine,"Compassion: " + string(obj_gameController.playerCompassionTotal))
		drawLine += 30
	}
	else if obj_gameController.playerWeaponStat == 2 {
		draw_text(drawColumn,drawLine,"Strength: " + string(obj_gameController.playerStrengthTotal))
		drawLine += 30
		draw_text(drawColumn,drawLine,"Compassion: " + string(obj_gameController.playerCompassionTotal))
		drawLine += 30
	}
	else if obj_gameController.playerWeaponStat == 3 {
		draw_text(drawColumn,drawLine,"Strength: " + string(obj_gameController.playerStrengthTotal))
		drawLine += 30
		draw_text(drawColumn,drawLine,"Intelligence: " + string(obj_gameController.playerIntelligenceTotal))
		drawLine += 30
	}
	
	
}

if dicePanel == true {
	
	if obj_gameController.alarm[1] < 0 { //Hide dice panel when process is complete
		obj_gameController.diceSimVisible = false
	}
	
	if obj_gameController.diceSimVisible == true { //Draw dice panel
		
		//Draw panel background
		draw_set_alpha(0.5)
		draw_set_color(c_dkgray)
		draw_roundrect_ext(800,650,room_width-800,800,40,40,false)
		draw_set_color(c_gray)
		draw_roundrect_ext(810,660,room_width-810,790,30,30,false)
		draw_set_alpha(1)
		
		//Animate rolling dice
		if obj_gameController.alarm[1] == 180 {
			audio_play_sound(snd_fxDice,10,false,1)
		}
		if obj_gameController.alarm[1] > 120 {
			diceAnimationCooldown -= 1
			if diceAnimationCooldown == 0 {
				diceAnimationFrame = irandom_range(1,9)		
				diceAnimationCooldown = 5
			}
		}
		else {
			diceAnimationFrame = 0
			
		}
		
		if obj_gameController.diceSimState == 1 { //Draw player attacking dice
			draw_sprite(spr_diceAnim,diceAnimationFrame,864,725)
			draw_sprite(spr_diceAnim,diceAnimationFrame,1056,725)
			
			draw_set_halign(fa_center)
			draw_set_valign(fa_middle)
			draw_set_font(fnt_plain)			
			draw_set_color(c_black)
			draw_text(864,685,"P Atk:")
			draw_text(1056,685,"E Def:")
			
			if obj_gameController.alarm[1] <= 120 {
				draw_set_color(c_red)
				draw_text(864,725,obj_gameController.playerAttackRoll)
				draw_set_color(c_blue)
				draw_text(1056,725,obj_gameController.enemyDefenseRoll)
				
				draw_set_color(c_black)
				draw_text(960,725,"-")
				draw_text(960,765,"= " + string(obj_gameController.playerDamageValue) + " Damage Dealt")
				
			}
			draw_set_halign(fa_left)
			draw_set_valign(fa_top)
		}
		else if obj_gameController.diceSimState == 2 { //Draw enemy attacking dice
			draw_sprite(spr_diceAnim,diceAnimationFrame,864,725)
			draw_sprite(spr_diceAnim,diceAnimationFrame,1056,725)
			
			draw_set_halign(fa_center)
			draw_set_valign(fa_middle)
			draw_set_font(fnt_plain)			
			draw_set_color(c_black)
			draw_text(864,685,"E Atk:")
			draw_text(1056,685,"P Def:")
			
			if obj_gameController.alarm[1] <= 120 {
				draw_set_color(c_maroon)
				draw_text(864,725,obj_gameController.enemyAttackRoll)
				draw_set_color(c_blue)
				draw_text(1056,725,obj_gameController.playerEnduranceRoll)
				
				draw_set_color(c_black)
				draw_text(960,725,"-")
				draw_text(960,765,"= " + string(obj_gameController.enemyDamageRoll) + " Damage Taken")
				
			}
			draw_set_halign(fa_left)
			draw_set_valign(fa_top)
		}
		else if obj_gameController.diceSimState == 3 { //Draw player defending dice
			draw_sprite(spr_diceAnim,diceAnimationFrame,864,725)
			draw_sprite(spr_diceAnim,diceAnimationFrame,960,725)
			draw_sprite(spr_diceAnim,diceAnimationFrame,1056,725)
			
			draw_set_halign(fa_center)
			draw_set_valign(fa_middle)
			draw_set_font(fnt_plain)			
			draw_set_color(c_black)
			draw_text(864,685,"E Atk:")
			draw_text(960,685,"P Grd:")
			draw_text(1056,685,"P Def:")
			
			if obj_gameController.alarm[1] <= 120 {
				draw_set_color(c_maroon)
				draw_text(864,725,obj_gameController.enemyAttackRoll)
				draw_set_color(c_red)
				draw_text(960,725,obj_gameController.playerAttackRoll)
				draw_set_color(c_blue)
				draw_text(1056,725,obj_gameController.playerEnduranceRoll)
				
				draw_set_color(c_black)
				draw_text(912,725,"-")
				draw_text(1008,725,"-")
				draw_text(960,765,"= " + string(obj_gameController.enemyDamageRoll) + " Damage Taken")
				
			}
			draw_set_halign(fa_left)
			draw_set_valign(fa_top)
		}
		else if obj_gameController.diceSimState == 4 { //Draw player running dice
			draw_sprite(spr_diceAnim,diceAnimationFrame,864,725)
			draw_sprite(spr_diceAnim,diceAnimationFrame,1056,725)
			draw_set_color(c_black)
			draw_set_halign(fa_center)
			draw_set_valign(fa_middle)
			draw_set_font(fnt_plain)
			draw_text(864,685,"Player:")
			draw_text(1056,685,"Enemy:")
			if obj_gameController.alarm[1] <= 120 {
				draw_set_color(c_lime)
				draw_text(864,725,obj_gameController.playerAgilityRoll)
				draw_set_color(c_green)
				draw_text(1056,725,obj_gameController.enemySpeedRoll)
				
				draw_set_color(c_black)
				if obj_gameController.playerAgilityRoll > obj_gameController.enemySpeedRoll {
					draw_text(960,725,">")
					draw_text(960,765,"Success")
				}
				else {
					draw_text(960,725,"<")
					draw_text(960,765,"Failure")
				}
			}
			draw_set_halign(fa_left)
			draw_set_valign(fa_top)
		}
		else if obj_gameController.diceSimState == 5 { //Draw challenge dice
			draw_sprite(spr_diceAnim,diceAnimationFrame,960,725)
			draw_set_color(c_black)
			draw_set_halign(fa_center)
			draw_set_valign(fa_middle)
			draw_set_font(fnt_plain)
			draw_text(960,685,"DC: " + obj_gameController.challengeSelectedDC)
			if obj_gameController.alarm[1] <= 120 {
				if obj_gameController.playerChallengeStatChosen == 1 {
					draw_set_color(c_green)
				}
				else if obj_gameController.playerChallengeStatChosen == 2 {
					draw_set_color(c_blue)
				}
				else if obj_gameController.playerChallengeStatChosen == 3 {
					draw_set_color(c_red)
				}
				draw_text(960,725,obj_gameController.playerChallengeRoll)
				if obj_gameController.playerChallengeRoll >= obj_gameController.challengeSelectedDC {
					draw_set_color(c_lime)
					draw_text(960,765,"Success")
				}
				else {
					draw_set_color(c_maroon)
					draw_text(960,765,"Failure")
				}
			}
			draw_set_halign(fa_left)
			draw_set_valign(fa_top)
		}		
	}
}


if room == rm_pause {
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_plain)
	draw_set_color(c_yellow)
	draw_text(960,510,"Select Left to restart Endless Mode")
	draw_text(960,540,"Select Middle to restart Story Mode")
	draw_text(960,570,"Select Right to continue the game")
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
}

if room == rm_start {
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_plain)
	draw_set_color(c_white)
	draw_text(480,700,"Select Left to begin Endless Mode")
	draw_text(room_width-480,700,"Select Right to begin Story Mode")
	draw_text(960,800,"Select Middle for Tutorial")
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
}

if room == rm_tutorial {
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_plain)
	draw_set_color(c_white)
	if obj_gameController.gameState <= -3 {
		draw_text(480,900,"Select Left to go back")
	}
	if obj_gameController.gameState >= -8 {
		draw_text(1440,900,"Select Right to go forward")
	}
	draw_text(960,900,"Select Middle to return Home")
	
	draw_set_font(fnt_gothicLarge)
	draw_set_color(c_yellow)
	
	
	if obj_gameController.gameState == -2 {
		draw_text(960,200,"Introduction")
		draw_set_font(fnt_plain)
		draw_set_color(c_white)
		draw_text_ext(960, 540, "Greetings, Challenger! In this world, you take on the role of an omnipotent puppet-master deity, tasked with safely guiding your chosen champion along the path to defeating a world-ending calamity in this formerly peaceful land.", -1, 500)
	}
	else if obj_gameController.gameState == -4 {
		draw_text(960,200,"Controls")
		draw_set_font(fnt_plain)
		draw_set_color(c_white)
		draw_text_ext(480, 540, "When using a Statue to control your champion, raise the left arm to select the left option. Raise the right arm to select the right option. Press the middle button to select the middle option. To skip the timer, press and release the Skip button. To pause the game, press the Skip button for at least one second, then release.", -1, 500)
		draw_text_ext(1440, 540, "When using a Keyboard to control your champion, press the left arrow to select the left option. Press the right arrow to select the right option. Press the down arrow to select the middle option. To skip the timer, press the spacebar. To pause the game, press the escape key.", -1, 500)
	}
	else if obj_gameController.gameState == -6 {
		draw_text(960,200,"Gameplay")
		draw_set_font(fnt_plain)
		draw_set_color(c_white)
		
		draw_text_ext(960, 540, "After you choose your champion, you must guide them down a path that leads to victory. You will be able to see what awaits them down each of the three paths they may take, and should you choose to, you may directly affect their decisions. Doing so will cost you, though, and you may only take command of your champion's agency a limited number of times. The rest of their choices are theirs alone, so you must be cautious where you intervene. You may regain your Divine Influence through the faith of your Champion, however, when they are able to pray at a Shrine or Temple.", -1, 700)
	}
	else if obj_gameController.gameState == -8 {
		draw_text(960,200,"Statistics")
		draw_set_font(fnt_plain)
		draw_set_color(c_white)
		draw_text_ext(480, 540, "Your champion's capabilities are measured through six statistics; Vitality, Endurance, Agility, Strength, Intelligence, and Compassion. The first three reflect their ability to survive the challenges in front of them, while the second three describe their ability to act on the world in front of them.", -1, 400)
		draw_text_ext(960, 540, "Vitality affects your champion's maximum health, while Endurance represents their ability to resist damage. Agility is your champion's speed and ability to escape from danger. Strength, Intelligence, and Compassion are used to face the challenges your champion encounters, as well as to use various kinds of weapons in combat.", -1, 400)
		draw_text_ext(1440, 540, "Every challenge for your champion to overcome is ultimately a test of fate--a roll of the dice, if you will. As each of your champion's statistics increases, so does the size of their die, and with it, the greater the heights they can achieve. Be careful not to guide your champion down a path that they are poorly-equipped to handle.", -1, 400)
	}
	else if obj_gameController.gameState == -10 {
		draw_text(960,200,"Combat")
		draw_set_font(fnt_plain)
		draw_set_color(c_white)
		draw_text_ext(480, 540, "When battling, you may choose between three different options; Attacking, Defending, or Fleeing. When Attacking, your champion pits their Strength, Intelligence, or Compassion against their foe's Defense, depending on which type of weapon they currently have equipped. If your offense overwhelms their defense, your champion will deal damage to their opponent equal to their attack minus their opponent's defense.", -1, 400)
		draw_text_ext(960, 540, "When Defending, your champion skips the chance to deal damage in exchange for greatly increasing their own defensive ability. When the enemy facing your champion rolls to attack, you will not only subtract the champion's Endurance roll from the damage, but an additional attack roll of their own. While it is still possible for your champion to be injured in this way, it is far less likely than if you had not chosen to guard.", -1, 400)
		draw_text_ext(1440, 540, "When Fleeing, your champion contests their Agility against their opponent's corresponding speed roll. If your champion succeeds, they will escape from the battle and move along, but they will not receive any rewards for their victory. If they fail to outmatch their opponent, however, the fight will continue and their enemy will be able to strike your champion without the opportunity to guard or retaliate.", -1, 400)

	}
	
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
}

if room == rm_choice {
	obj_influenceCounter.y = 941
}
else if room != rm_start && room != rm_tutorial{
	obj_influenceCounter.y = 768
}