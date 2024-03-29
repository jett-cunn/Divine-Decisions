/// @description Insert description here
// You can write your code in this editor

/*
drawColumn = 1675
drawLine = 0
charmName = ""
armorName = ""
bootsName = ""
weaponName = ""

if obj_gameController.playerCharmBonus == 1 {
	charmName = "Symbolic Ink (+1 Vitality)"
}
else if obj_gameController.playerCharmBonus == 2 {
	charmName = "Shrine Charm (+2 Vitality)"
}
else if obj_gameController.playerCharmBonus == 3 {
	charmName = "Talisman (+3 Vitality)"
}
else if obj_gameController.playerCharmBonus == 4 {
	charmName = "Enchanted Symbolic Ink (+4 Vitality)"
}
else {
	charmName = ""
}

if obj_gameController.playerArmorBonus == 1 {
	armorName = "Cuirass (+1 Endurance)"
}
else if obj_gameController.playerArmorBonus == 2 {
	armorName = "Chainmail (+2 Endurance)"
}
else if obj_gameController.playerArmorBonus == 3 {
	armorName = "Plate Armor (+3 Endurance)"
}
else if obj_gameController.playerArmorBonus == 4 {
	armorName = "Enchanted Cuirass (+4 Endurance)"
}
else {
	armorName = ""
}

if obj_gameController.playerBootBonus == 1 {
	bootsName = "Symbolic Ink (+1 Vitality)"
}
else if obj_gameController.playerBootBonus == 2 {
	bootsName = "Shrine Charm (+2 Vitality)"
}
else if obj_gameController.playerBootBonus == 3 {
	bootsName = "Talisman (+3 Vitality)"
}
else if obj_gameController.playerBootBonus == 4 {
	bootsName = "Enchanted Symbolic Ink (+4 Vitality)"
}
else {
	bootsName = ""
}


if obj_gameController.playerWeaponStat == 1 {
	if obj_gameController.playerWeaponBonus == 1 {
		weaponName = "Dagger (+1 Strength)"
	}
	else if obj_gameController.playerWeaponBonus == 2 {
		weaponName = "Sword (+2 Strength)"
	}
	else if obj_gameController.playerWeaponBonus == 3 {
		weaponName = "Greataxe (+3 Strength)"
	}
	else if obj_gameController.playerWeaponBonus == 4 {
		weaponName = "Enchanted Dagger (+4 Strength)"
	}
}
else if obj_gameController.playerWeaponStat == 2 {
		if obj_gameController.playerWeaponBonus == 1 {
		weaponName = "Tome (+1 Intelligence)"
	}
	else if obj_gameController.playerWeaponBonus == 2 {
		weaponName = "Wand (+2 Intelligence)"
	}
	else if obj_gameController.playerWeaponBonus == 3 {
		weaponName = "Staff (+3 Intelligence)"
	}
	else if obj_gameController.playerWeaponBonus == 4 {
		weaponName = "Enchanted Tome (+4 Intelligence)"
	}
}
else if obj_gameController.playerWeaponStat == 3 {
		if obj_gameController.playerWeaponBonus == 1 {
		weaponName = "Flute (+1 Compassion)"
	}
	else if obj_gameController.playerWeaponBonus == 2 {
		weaponName = "Drum (+2 Compassion)"
	}
	else if obj_gameController.playerWeaponBonus == 3 {
		weaponName = "Harp (+3 Compassion)"
	}
	else if obj_gameController.playerWeaponBonus == 4 {
		weaponName = "Enchanted Flute (+4 Compassion)"
	}
}
else {
	weaponName = ""
}


if obj_gameController.inventoryVisible == true {
	
	draw_set_color(c_ltgray)
	draw_rectangle(1675,300,1920,690,false)
	draw_set_color(c_dkgray)
	draw_rectangle(1675,300,1920,690,true)
	
	draw_set_font(fnt_debug)
	draw_set_color(c_maroon)
	draw_set_halign(fa_left)
	
	drawLine = 300
	
	draw_text(drawColumn, drawLine, "Base Vitality; " + string(obj_gameController.playerVitalityBase))
	drawLine += 15
	draw_text(drawColumn, drawLine, "Base Endurance; " + string(obj_gameController.playerEnduranceBase))
	drawLine += 15
	draw_text(drawColumn, drawLine, "Base Agility; " + string(obj_gameController.playerAgilityBase))
	drawLine += 15
	draw_text(drawColumn, drawLine, "Base Strength; " + string(obj_gameController.playerStrengthBase))
	drawLine += 15
	draw_text(drawColumn, drawLine, "Base Intelligence; " + string(obj_gameController.playerIntelligenceBase))
	drawLine += 15
	draw_text(drawColumn, drawLine, "Base Compassion; " + string(obj_gameController.playerCompassionBase))
	drawLine += 30
	
	draw_text(drawColumn, drawLine, "Charm; " + charmName)
	drawLine += 15
	draw_text(drawColumn, drawLine, "Armor; " + armorName)
	drawLine += 15
	draw_text(drawColumn, drawLine, "Boots; " + bootsName)
	drawLine += 15
	draw_text(drawColumn, drawLine, "Weapon; " + weaponName)
	drawLine += 30
	
	draw_text(drawColumn, drawLine, "Vitality Bonus; " + string(obj_gameController.playerVitalityEffect))
	drawLine += 15
	draw_text(drawColumn, drawLine, "Endurance Bonus; " + string(obj_gameController.playerEnduranceEffect))
	drawLine += 15
	draw_text(drawColumn, drawLine, "Agility Bonus; " + string(obj_gameController.playerAgilityEffect))
	drawLine += 15
	draw_text(drawColumn, drawLine, "Strength Bonus; " + string(obj_gameController.playerStrengthEffect))
	drawLine += 15
	draw_text(drawColumn, drawLine, "Intelligence Bonus; " + string(obj_gameController.playerIntelligenceEffect))
	drawLine += 15
	draw_text(drawColumn, drawLine, "Compassion Bonus; " + string(obj_gameController.playerCompassionEffect))
	drawLine += 30
	
	draw_text(drawColumn, drawLine, "Total Stats;")
	drawLine += 15
	draw_text(drawColumn, drawLine, "Vitality; " + string(obj_gameController.playerVitalityTotal))
	drawLine += 15
	draw_text(drawColumn, drawLine, "Endurance; " + string(obj_gameController.playerEnduranceTotal))
	drawLine += 15
	draw_text(drawColumn, drawLine, "Agility; " + string(obj_gameController.playerAgilityTotal))
	drawLine += 15
	draw_text(drawColumn, drawLine, "Strength; " + string(obj_gameController.playerStrengthTotal))
	drawLine += 15
	draw_text(drawColumn, drawLine, "Intelligence; " + string(obj_gameController.playerIntelligenceTotal))
	drawLine += 15
	draw_text(drawColumn, drawLine, "Compassion; " + string(obj_gameController.playerCompassionTotal))
	drawLine += 30
	
}




