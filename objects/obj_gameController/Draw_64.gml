/// @description Insert description here
// You can write your code in this editor


draw_set_font(fnt_gothicLarge);

draw_set_halign(fa_left);

draw_set_color(c_aqua);

draw_text(15,15,score);

draw_set_font(fnt_debug);

if gameState >= 2 {
	draw_text(15,60,"Button Left Active; " + string(buttonLeftPressed));
	draw_text(15,75,string(obj_buttonLeft.alarm[0]));
	draw_text(15,90,"Button Middle Active; " + string(buttonMiddlePressed));
	draw_text(15,105,string(obj_buttonMiddle.alarm[0]));
	draw_text(15,120,"Button Right Active; " + string(buttonRightPressed));
	draw_text(15,135,string(obj_buttonRight.alarm[0]));
}



/*
draw_set_font(fnt_debug);
draw_set_halign(fa_left);
draw_set_color(c_blue);

draw_text(10,15,"Base Vitality; " + string(playerVitalityBase));
draw_text(10,30,"Base Endurance; " + string(playerEnduranceBase));
draw_text(10,45,"Base Agility; " + string(playerAgilityBase));
draw_text(10,60,"Base Strength; " + string(playerStrengthBase));
draw_text(10,75,"Base Intelligence; " + string(playerIntelligenceBase));
draw_text(10,90,"Base Compassion; " + string(playerCompassionBase));

draw_text(10,120,"Charm Bonus; " + string(playerCharmBonus));
draw_text(10,135,"Armor Bonus; " + string(playerArmorBonus));
draw_text(10,150,"Boot Bonus; " + string(playerBootBonus));
draw_text(10,165,"Weapon Bonus; " + string(playerWeaponBonus));
draw_text(10,180,"Weapon Stat; " + string(playerWeaponStat));

draw_text(10,210,"Total Vitality; " + string(playerVitalityTotal));
draw_text(10,225,"Total Endurance; " + string(playerEnduranceTotal));
draw_text(10,240,"Total Agility; " + string(playerAgilityTotal));
draw_text(10,255,"Total Strength; " + string(playerStrengthTotal));
draw_text(10,270,"Total Intelligence; " + string(playerIntelligenceTotal));
draw_text(10,285,"Total Compassion; " + string(playerCompassionTotal));

draw_text(10,300,string(buttonLeftVisible));
draw_text(10,315,string(buttonMiddleVisible));
draw_text(10,330,string(buttonRightVisible));

draw_text(10,360,buttonLeftTextA);
draw_text(10,375,buttonLeftTextB);
draw_text(10,390,buttonMiddleTextA);
draw_text(10,405,buttonMiddleTextB);
draw_text(10,420,buttonRightTextA);
draw_text(10,435,buttonRightTextB);

draw_text(10,465,"Encounter 1 Value; " + string(encounterRoll1));
draw_text(10,480,"Encounter 2 Value; " + string(encounterRoll2));
draw_text(10,495,"Encounter 3 Value; " + string(encounterRoll3));

draw_text(10,525,"Enemy Max Health; " + string(enemyMaxHealth));
draw_text(10,540,"Enemy Attack; " + string(enemyAttack));
draw_text(10,555,"Enemy Defense; " + string(enemyDefense));
draw_text(10,570,"Enemy Speed; " + string(enemySpeed));
draw_text(10,585,"Enemy Type; " + string(enemyType));

draw_text(10,615,"Item ID; " + string(rewardID));
draw_text(10,630,"Reward Value; " + string(rewardID % 10));