/// @description Insert description here
// You can write your code in this editor

draw_healthbar(x+25,y+98,x+448,y+105,obj_gameController.enemyHealthPercentage,c_black,c_red,c_lime,1,false,false);

draw_set_font(fnt_plain);
draw_set_halign(fa_left);

if (obj_gameController.gameState == 136 && obj_gameController.playerActionChoice == 3) || obj_gameController.gameState == 151 {
	
	draw_set_color(c_red);
	draw_text(x+150, y+40, string(obj_gameController.playerAttackRoll));
	
	draw_set_color(c_blue);
	draw_text(x+180, y+40, "- " + string(obj_gameController.enemyDefenseRoll));
	
	draw_set_color(c_green)
	draw_text(x+220, y+40, "= " + string(obj_gameController.playerDamageValue) + " Damage")
	
}




