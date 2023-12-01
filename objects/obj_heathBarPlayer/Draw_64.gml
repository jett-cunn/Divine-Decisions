/// @description Insert description here
// You can write your code in this editor

draw_healthbar(x+25,y+98,x+448,y+105,obj_gameController.playerHealthPercentage,c_black,c_red,c_lime,0,false,false);


draw_set_font(fnt_plain);
draw_set_halign(fa_left);

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
		draw_text(x+220, y+40, "= " + string(obj_gameController.playerDamageValue) + " Damage");

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

