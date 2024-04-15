/// @description Insert description here
// You can write your code in this editor


if obj_gameController.gameState >= 3 && obj_gameController.gameState <= 8 {
	draw_set_color(c_ltgray);
	draw_set_font(fnt_gothicLarge);
	draw_set_halign(fa_left);
	draw_text(400,300,"Base Stats");
	draw_text(1320,300, "Equipped Items");
	draw_set_font(fnt_plain);
}

if obj_gameController.gameState == 3 || obj_gameController.gameState == 6 { //Mercy
	draw_text(410,350,"Vitality;  2");
	draw_text(410,375,"Endurance;  1");
	draw_text(410,400,"Agility;  3");
	draw_text(410,425,"Strength;  2");
	draw_text(410,450,"Intelligence;  2");
	draw_text(410,475,"Compassion;  3");
	
	draw_text(1280,350,"Charm; Symbolic Ink");
	draw_text(1280,375,"   +1 Vitality");
	draw_text(1280,400,"Armor; Cuirass");
	draw_text(1280,425,"   +1 Endurance");
	draw_text(1280,450,"Boots; Short Boots");
	draw_text(1280,475,"   +2 Agility");
	draw_text(1280,500,"Weapon; Lute");
	draw_text(1280,525,"   +2 Compassion");
}

if obj_gameController.gameState == 4 || obj_gameController.gameState == 7 { //Wisdom
	draw_text(410,350,"Vitality;  1");
	draw_text(410,375,"Endurance;  3");
	draw_text(410,400,"Agility;  2");
	draw_text(410,425,"Strength;  2");
	draw_text(410,450,"Intelligence;  3");
	draw_text(410,475,"Compassion;  2");
	
	draw_text(1280,350,"Charm; Symbolic Ink");
	draw_text(1280,375,"   +1 Vitality");
	draw_text(1280,400,"Armor; Chainmail");
	draw_text(1280,425,"   +2 Endurance");
	draw_text(1280,450,"Boots; Turnsole Shoes");
	draw_text(1280,475,"   +1 Agility");
	draw_text(1280,500,"Weapon; Wand");
	draw_text(1280,525,"   +2 Int");
}

if obj_gameController.gameState == 5 || obj_gameController.gameState == 8 { //Valor
	draw_text(410,350,"Vitality;  3");
	draw_text(410,375,"Endurance;  2");
	draw_text(410,400,"Agility;  1");
	draw_text(410,425,"Strength;  3");
	draw_text(410,450,"Intelligence;  2");
	draw_text(410,475,"Compassion;  2");
	
	draw_text(1280,350,"Charm; Shrine Charm");
	draw_text(1280,375,"   +2 Vitality");
	draw_text(1280,400,"Armor; Cuirass");
	draw_text(1280,425,"   +1 Endurance");
	draw_text(1280,450,"Boots; Turnsole Shoes");
	draw_text(1280,475,"   +1 Agility");
	draw_text(1280,500,"Weapon; Sword");
	draw_text(1280,525,"   +2 Strength");
}




