/// @description Insert description here
// You can write your code in this editor

/*
draw_healthbar(x+25,y+98,x+448,y+105,obj_gameController.playerHealthPercentage,c_black,c_red,c_lime,0,false,false);


draw_set_font(fnt_plain);
draw_set_halign(fa_left);

draw_set_color(c_green);
draw_text(x+25,y+120, string(obj_gameController.playerCurrentHealth) + " / " + string(obj_gameController.playerMaxHealth))


if (obj_gameController.gameState == 136 && obj_gameController.playerActionChoice == 1) || obj_gameController.gameState == 150 {
	
	draw_set_color(c_lime);
	draw_text(x+150, y+40, string(obj_gameController.playerAgilityRoll));
	
	draw_set_color(c_green);
	draw_text(x+180, y+40, "- " + string(obj_gameController.enemySpeedRoll));
	
	draw_set_color(c_green)
	if obj_gameController.playerAgilityRoll > obj_gameController.enemySpeedRoll {
		draw_text(x+220, y+40, "= Escape")
	}
	else {
		draw_text(x+220, y+40, "= Fail")
	}
	
}

if obj_gameController.gameState == 132 && obj_gameController.fightTurn1 == false {
	
	if obj_gameController.playerGuarded == 0 {
		draw_set_color(c_red);
		draw_text(x+150, y+40, string(obj_gameController.enemyAttackRoll));
		
		draw_set_color(c_blue);
		draw_text(x+180, y+40, "- " + string(obj_gameController.playerEnduranceRoll));
		
		draw_set_color(c_green)
		draw_text(x+220, y+40, "= " + string(obj_gameController.enemyDamageRoll) + " Damage");

	}
	else if obj_gameController.playerGuarded == 1 {
		draw_set_color(c_red);
		draw_text(x+150, y+40, string(obj_gameController.enemyAttackRoll));
		
		draw_set_color(c_blue);
		draw_text(x+180, y+40, "- " + string(obj_gameController.playerEnduranceRoll));
		
		draw_set_color(c_maroon);
		draw_text(x+220, y+40, "- " + string(obj_gameController.playerAttackRoll));
		
		draw_set_color(c_green)
		draw_text(x+260, y+40, "= " + string(obj_gameController.enemyDamageRoll) + " Damage");
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
	draw_text(x+125, y+40, string(obj_gameController.playerChallengeRoll))
	
	
	if obj_gameController.gameState == 166 {
		draw_set_color(c_lime)
		draw_text(x+155, y+40, ">")
	}
	else {
		draw_set_color(c_maroon)
		draw_text(x+155, y+40, "<")
	}
	
	
	draw_set_color(c_black)
	draw_text(x+170,y+40, string(obj_gameController.challengeSelectedDC))
	
	
}
*/
