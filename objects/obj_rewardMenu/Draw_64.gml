/// @description Insert description here
// You can write your code in this editor

if obj_gameController.gameState >= 190 {
	
	draw_set_font(fnt_plain);
	draw_set_color(c_dkgray);
	draw_set_halign(fa_center);
	
	
	//Equipped Items
	if obj_gameController.rewardID < 20 { //Charms
		
		if obj_gameController.playerCharmBonus == 1 {
			draw_text(500,300,"Symbolic Ink");
			draw_text(500,330,"Vitality + 1");
		}
		else if obj_gameController.playerCharmBonus == 2 {
			draw_text(500,300,"Shrine Charm");
			draw_text(500,330,"Vitality + 2");
		}
		else if obj_gameController.playerCharmBonus == 3 {
			draw_text(500,300,"Talisman");
			draw_text(500,330,"Vitality + 3");
		}
		else if obj_gameController.playerCharmBonus == 4 {
			draw_text(500,300,"Enchanted Ink");
			draw_text(500,330,"Vitality + 4");
		}
		else if obj_gameController.playerCharmBonus == 5 {
			draw_text(500,300,"Enchanted Charm");
			draw_text(500,330,"Vitality + 5");
		}
		else if obj_gameController.playerCharmBonus == 6 {
			draw_text(500,300,"Enchanted Talisman");
			draw_text(500,330,"Vitality + 6");
		}
		
	}
	else if obj_gameController.rewardID < 30 { //Armor
		
		if obj_gameController.playerArmorBonus == 1 {
			draw_text(500,300,"Cuirass");
			draw_text(500,330,"Endurance + 1");
		}
		else if obj_gameController.playerArmorBonus == 2 {
			draw_text(500,300,"Chain Mail");
			draw_text(500,330,"Endurance + 2");
		}
		else if obj_gameController.playerArmorBonus == 3 {
			draw_text(500,300,"Plate Mail");
			draw_text(500,330,"Endurance + 3");
		}
		else if obj_gameController.playerArmorBonus == 4 {
			draw_text(500,300,"Enchanted Cuirass");
			draw_text(500,330,"Endurance + 4");
		}
		else if obj_gameController.playerArmorBonus == 5 {
			draw_text(500,300,"Enchanted Mail");
			draw_text(500,330,"Endurance + 5");
		}
		else if obj_gameController.playerArmorBonus == 6 {
			draw_text(500,300,"Enchanted Plate");
			draw_text(500,330,"Endurance + 6");
		}
		
	}
	else if obj_gameController.rewardID < 40 { //Boots
		
		if obj_gameController.playerBootBonus == 1 {
			draw_text(500,300,"Turnsole Shoes");
			draw_text(500,330,"Agility + 1");
		}
		else if obj_gameController.playerBootBonus == 2 {
			draw_text(500,300,"Short Boots");
			draw_text(500,330,"Agility + 2");
		}
		else if obj_gameController.playerBootBonus == 3 {
			draw_text(500,300,"Warrior Boots");
			draw_text(500,330,"Agility + 3");
		}
		else if obj_gameController.playerBootBonus == 4 {
			draw_text(500,300,"Enchanted Turnsoles");
			draw_text(500,330,"Agility + 4");
		}
		else if obj_gameController.playerBootBonus == 5 {
			draw_text(500,300,"Enchanted Boots");
			draw_text(500,330,"Agility + 5");
		}
		else if obj_gameController.playerBootBonus == 6 {
			draw_text(500,300,"Enchanted Sabatons");
			draw_text(500,330,"Agility + 6");
		}
		
	}
	else if obj_gameController.rewardID < 70 { //Weapons
		
		if obj_gameController.playerWeaponStat == 1 { //Strength Weapons
			if obj_gameController.playerWeaponBonus == 1 {
				draw_text(500,300,"Dagger");
				draw_text(500,330,"Strength + 1");
			}
			else if obj_gameController.playerWeaponBonus == 2 {
				draw_text(500,300,"Sword");
				draw_text(500,330,"Strength + 2");
			}
			else if obj_gameController.playerWeaponBonus == 3 {
				draw_text(500,300,"Greataxe");
				draw_text(500,330,"Strength + 3");
			}
			else if obj_gameController.playerWeaponBonus == 4 {
				draw_text(500,300,"Enchanted Dagger");
				draw_text(500,330,"Strength + 4");
			}
			else if obj_gameController.playerWeaponBonus == 5 {
				draw_text(500,300,"Enchanted Sword");
				draw_text(500,330,"Strength + 5");
			}
			else if obj_gameController.playerWeaponBonus == 6 {
				draw_text(500,300,"Enchanted Greataxe");
				draw_text(500,330,"Strength + 6");
			}
			
		}
		else if obj_gameController.playerWeaponStat == 2 { // Intelligence Weapons
			if obj_gameController.playerWeaponBonus == 1 {
				draw_text(500,300,"Tome");
				draw_text(500,330,"Intelligence + 1");
			}
			else if obj_gameController.playerWeaponBonus == 2 {
				draw_text(500,300,"Wand");
				draw_text(500,330,"Intelligence + 2");
			}
			else if obj_gameController.playerWeaponBonus == 3 {
				draw_text(500,300,"Staff");
				draw_text(500,330,"Intelligence + 3");
			}
			else if obj_gameController.playerWeaponBonus == 4 {
				draw_text(500,300,"Enchanted Tome");
				draw_text(500,330,"Intelligence + 4");
			}
			else if obj_gameController.playerWeaponBonus == 5 {
				draw_text(500,300,"Enchanted Wand");
				draw_text(500,330,"Intelligence + 5");
			}
			else if obj_gameController.playerWeaponBonus == 6 {
				draw_text(500,300,"Enchanted Staff");
				draw_text(500,330,"Intelligence + 6");
			}
			
		}
		else if obj_gameController.playerWeaponStat == 3 { // Compassion Weapons
			if obj_gameController.playerWeaponBonus == 1 {
				draw_text(500,300,"Flute");
				draw_text(500,330,"Compassion + 1");
			}
			else if obj_gameController.playerWeaponBonus == 2 {
				draw_text(500,300,"Lute");
				draw_text(500,330,"Compassion + 2");
			}
			else if obj_gameController.playerWeaponBonus == 3 {
				draw_text(500,300,"Harp");
				draw_text(500,330,"Compassion + 3");
			}
			else if obj_gameController.playerWeaponBonus == 4 {
				draw_text(500,300,"Enchanted Flute");
				draw_text(500,330,"Compassion + 4");
			}
			else if obj_gameController.playerWeaponBonus == 5 {
				draw_text(500,300,"Enchanted Lute");
				draw_text(500,330,"Compassion + 5");
			}
			else if obj_gameController.playerWeaponBonus == 6 {
				draw_text(500,300,"Enchanted Harp");
				draw_text(500,330,"Compassion + 6");
			}
			
		}
		
	}
	
	//Reward Items
	if obj_gameController.rewardID < 20 { //Charms
		if obj_gameController.rewardID % 10 == 1 {
			draw_text(1450,300,"Symbolic Ink");
			draw_text(1450,330,"Vitality + 1");
		}
		else if obj_gameController.rewardID % 10 == 2 {
			draw_text(1450,300,"Shrine Charm");
			draw_text(1450,330,"Vitality + 2");
		}
		else if obj_gameController.rewardID % 10 == 3 {
			draw_text(1450,300,"Talisman");
			draw_text(1450,330,"Vitality + 3");
		}
		else if obj_gameController.rewardID % 10 == 4 {
			draw_text(1450,300,"Enchanted Ink");
			draw_text(1450,330,"Vitality + 4");
		}
		else if obj_gameController.rewardID % 10 == 5 {
			draw_text(1450,300,"Enchanted Charm");
			draw_text(1450,330,"Vitality + 5");
		}
		else if obj_gameController.rewardID % 10 == 6 {
			draw_text(1450,300,"Enchanted Talisman");
			draw_text(1450,330,"Vitality + 6");
		}
	}
	else if obj_gameController.rewardID < 30 { //Armors
		if obj_gameController.rewardID % 10 == 1 {
			draw_text(1450,300,"Cuirass");
			draw_text(1450,330,"Endurance + 1");
		}
		else if obj_gameController.rewardID % 10 == 2 {
			draw_text(1450,300,"Chain Mail");
			draw_text(1450,330,"Endurance + 2");
		}
		else if obj_gameController.rewardID % 10 == 3 {
			draw_text(1450,300,"Plate Armor");
			draw_text(1450,330,"Endurance + 3");
		}
		else if obj_gameController.rewardID % 10 == 4 {
			draw_text(1450,300,"Enchanted Cuirass");
			draw_text(1450,330,"Endurance + 4");
		}
		else if obj_gameController.rewardID % 10 == 5 {
			draw_text(1450,300,"Enchanted Mail");
			draw_text(1450,330,"Endurance + 5");
		}
		else if obj_gameController.rewardID % 10 == 6 {
			draw_text(1450,300,"Enchanted Plate");
			draw_text(1450,330,"Endurance + 6");
		}
	}
	else if obj_gameController.rewardID < 40 { //Boots
		if obj_gameController.rewardID % 10 == 1 {
			draw_text(1450,300,"Turnsole Shoes");
			draw_text(1450,330,"Agility + 1");
		}
		else if obj_gameController.rewardID % 10 == 2 {
			draw_text(1450,300,"Short Boots");
			draw_text(1450,330,"Agility + 2");
		}
		else if obj_gameController.rewardID % 10 == 3 {
			draw_text(1450,300,"Warrior Boots");
			draw_text(1450,330,"Agility + 3");
		}
		else if obj_gameController.rewardID % 10 == 4 {
			draw_text(1450,300,"Enchanted Turnsoles");
			draw_text(1450,330,"Agility + 4");
		}
		else if obj_gameController.rewardID % 10 == 5 {
			draw_text(1450,300,"Enchanted Boots");
			draw_text(1450,330,"Agility + 5");
		}
		else if obj_gameController.rewardID % 10 == 6 {
			draw_text(1450,300,"Enchanted Sabatons");
			draw_text(1450,330,"Agility + 6");
		}
	}
	else if obj_gameController.rewardID < 50 { //Strength Weapons
		if obj_gameController.rewardID % 10 == 1 {
			draw_text(1450,300,"Dagger");
			draw_text(1450,330,"Strength + 1");
		}
		else if obj_gameController.rewardID % 10 == 2 {
			draw_text(1450,300,"Sword");
			draw_text(1450,330,"Strength + 2");
		}
		else if obj_gameController.rewardID % 10 == 3 {
			draw_text(1450,300,"Greataxe");
			draw_text(1450,330,"Strength + 3");
		}
		else if obj_gameController.rewardID % 10 == 4 {
			draw_text(1450,300,"Enchanted Dagger");
			draw_text(1450,330,"Strength + 4");
		}
		else if obj_gameController.rewardID % 10 == 5 {
			draw_text(1450,300,"Enchanted Sword");
			draw_text(1450,330,"Strength + 5");
		}
		else if obj_gameController.rewardID % 10 == 6 {
			draw_text(1450,300,"Enchanted Greataxe");
			draw_text(1450,330,"Strength + 6");
		}
	}
	else if obj_gameController.rewardID < 60 { //Intelligence Weapons
		if obj_gameController.rewardID % 10 == 1 {
			draw_text(1450,300,"Tome");
			draw_text(1450,330,"Intelligence + 1");
		}
		else if obj_gameController.rewardID % 10 == 2 {
			draw_text(1450,300,"Wand");
			draw_text(1450,330,"Intelligence + 2");
		}
		else if obj_gameController.rewardID % 10 == 3 {
			draw_text(1450,300,"Staff");
			draw_text(1450,330,"Intelligence + 3");
		}
		else if obj_gameController.rewardID % 10 == 4 {
			draw_text(1450,300,"Enchanted Tome");
			draw_text(1450,330,"Intelligence + 4");
		}
		else if obj_gameController.rewardID % 10 == 5 {
			draw_text(1450,300,"Enchanted Wand");
			draw_text(1450,330,"Intelligence + 5");
		}
		else if obj_gameController.rewardID % 10 == 6 {
			draw_text(1450,300,"Enchanted Staff");
			draw_text(1450,330,"Intelligence + 6");
		}
	}
	else if obj_gameController.rewardID < 70 { //Compassion Weapons
		if obj_gameController.rewardID % 10 == 1 {
			draw_text(1450,300,"Flute");
			draw_text(1450,330,"Compassion + 1");
		}
		else if obj_gameController.rewardID % 10 == 2 {
			draw_text(1450,300,"Lute");
			draw_text(1450,330,"Compassion + 2");
		}
		else if obj_gameController.rewardID % 10 == 3 {
			draw_text(1450,300,"Harp");
			draw_text(1450,330,"Compassion + 3");
		}
		else if obj_gameController.rewardID % 10 == 4 {
			draw_text(1450,300,"Enchanted Flute");
			draw_text(1450,330,"Compassion + 4");
		}
		else if obj_gameController.rewardID % 10 == 5 {
			draw_text(1450,300,"Enchanted Lute");
			draw_text(1450,330,"Compassion + 5");
		}
		else if obj_gameController.rewardID % 10 == 6 {
			draw_text(1450,300,"Enchanted Harp");
			draw_text(1450,330,"Compassion + 6");
		}
	}
	
}




