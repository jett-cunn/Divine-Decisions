/// @description Insert description here
// You can write your code in this editor


if obj_gameController.gameState >= 3 && obj_gameController.gameState <= 8 {
	draw_set_color(c_ltgray);
	draw_set_font(fnt_gothicLarge);
	draw_set_halign(fa_left);
	draw_text(400,300,"Base Stats");
	draw_text(1320,300, "Equipped Items");
	draw_set_font(fnt_gothic);
}

if obj_gameController.gameState == 3 || obj_gameController.gameState == 6 { //Mercy
	draw_text(410,350,"Vitality;  2");
	draw_text(410,370,"Endurance;  1");
	draw_text(410,390,"Agility;  3");
	draw_text(410,410,"Strength;  2");
	draw_text(410,430,"Intelligence;  2");
	draw_text(410,450,"Compassion;  3");
	
	draw_text(1330,350,"Charm; Symbolic Ink");
	draw_text(1330,370,"   +1 Vitality");
	draw_text(1330,390,"Armor; Cuirass");
	draw_text(1330,410,"   +1 Endurance");
	draw_text(1330,430,"Boots; Short Boots");
	draw_text(1330,450,"   +2 Agility");
	draw_text(1330,470,"Weapon; Lute");
	draw_text(1330,490,"   +2 Compassion");
}

if obj_gameController.gameState == 4 || obj_gameController.gameState == 7 { //Wisdom
	draw_text(410,350,"Vitality;  1");
	draw_text(410,370,"Endurance;  3");
	draw_text(410,390,"Agility;  2");
	draw_text(410,410,"Strength;  2");
	draw_text(410,430,"Intelligence;  3");
	draw_text(410,450,"Compassion;  2");
	
	draw_text(1330,350,"Charm; Symbolic Ink");
	draw_text(1330,370,"   +1 Vitality");
	draw_text(1330,390,"Armor; Chainmail");
	draw_text(1330,410,"   +2 Endurance");
	draw_text(1330,430,"Boots; Turnsole Shoes");
	draw_text(1330,450,"   +1 Agility");
	draw_text(1330,470,"Weapon; Wand");
	draw_text(1330,490,"   +2 Int");
}

if obj_gameController.gameState == 5 || obj_gameController.gameState == 8 { //Valor
	draw_text(410,350,"Vitality;  3");
	draw_text(410,370,"Endurance;  2");
	draw_text(410,390,"Agility;  1");
	draw_text(410,410,"Strength;  3");
	draw_text(410,430,"Intelligence;  2");
	draw_text(410,450,"Compassion;  2");
	
	draw_text(1330,350,"Charm; Shrine Charm");
	draw_text(1330,370,"   +2 Vitality");
	draw_text(1330,390,"Armor; Cuirass");
	draw_text(1330,410,"   +1 Endurance");
	draw_text(1330,430,"Boots; Turnsole Shoes");
	draw_text(1330,450,"   +1 Agility");
	draw_text(1330,470,"Weapon; Sword");
	draw_text(1330,490,"   +2 Strength");
}




