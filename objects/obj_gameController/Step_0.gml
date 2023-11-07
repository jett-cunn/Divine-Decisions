/// @description Insert description here
// You can write your code in this editor

///The following code comprises the game's state machine. Refer to the reference document for gameState values.

//Character Creation


//Gameplay

if global.gameState == 100 { //Waiting for controller reset
	
	//Transition to selection screen
	
	if (global.buttonLeft + global.buttonMiddle + global.buttonRight) == 0 {
		global.gameState = 101;
	}
}

if global.gameState == 101 { //Choosing encounters
	
	global.encounterValue = random_range(1,6);
	global.encounter1 = global.encounterValue;
	global.encounterValue = random_range(1,6);
	global.encounter2 = global.encounterValue;
	global.encounterValue = random_range(1,6);
	global.encounter3 = global.encounterValue;
	
	global.gameState = 102;
}

if global.gameState == 102 { //Presenting options
	
	//Show buttons
	
	//Set text
	
	if (global.buttonLeft + global.buttonMiddle + global.buttonRight) == 0 {
		global.gameState = 103;
	}
}

if global.gameState == 103 { //Selection
	
	if (global.buttonLeft + global.buttonMiddle + global.buttonRight) > 1 {
		global.gameState = 102;
	}
	else if (global.buttonLeft + global.buttonMiddle + global.buttonRight) == 1 && global.buttonLeft == 1 {
		global.gameState = 104;
	}
	else if (global.buttonLeft + global.buttonMiddle + global.buttonRight) == 1 && global.buttonMiddle == 1 {
		global.gameState = 105;
	}
	else if (global.buttonLeft + global.buttonMiddle + global.buttonRight) == 1 && global.buttonRight == 1 {
		global.gameState = 106;
	}
	
}

if global.gameState == 104 { //Encounter setup
	global.currentEncounter = global.encounter1;
	//set reward value
	//hide buttons
	//move player sprite
	
	global.gameState = 130;
	//if encounter is a challenge, set state to 160
}

if global.gameState == 105 { //Encounter setup
	global.currentEncounter = global.encounter2;
	//set reward value
	//hide buttons
	//move player sprite
	
	global.gameState = 130;
	//if encounter is a challenge, set state to 160
}

if global.gameState == 106 { //Encounter setup
	global.currentEncounter = global.encounter3;
	//set reward value
	//hide buttons
	//move player sprite
	
	global.gameState = 130;
	//if encounter is a challenge, set state to 160
}

//Combat
if global.gameState == 130 { //Setup
	
	//Calculate player stats
	obj_player.playerVitalityTotal = obj_player.playerVitalityBase + obj_player.playerVitalityEffect + obj_player.playerVitalityBoon + obj_player.playerCharmBonus;
	obj_player.playerEnduranceTotal = obj_player.playerEnduranceBase + obj_player.playerEnduranceEffect + obj_player.playerEnduranceBoon + obj_player.playerArmorBonus;
	obj_player.playerAgilityTotal = obj_player.playerAgilityBase + obj_player.playerAgilityEffect + obj_player.playerAgilityBoon + obj_player.playerBootBonus;
	obj_player.playerStrengthTotal = obj_player.playerStrengthBase + obj_player.playerStrengthEffect + obj_player.playerStrengthBoon;
	if obj_player.playerWeaponStat == 1 {
		obj_player.playerStrengthTotal += obj_player.playerWeaponBonus;
	}
	obj_player.playerIntelligenceTotal = obj_player.playerIntelligenceBase + obj_player.playerIntelligenceEffect + obj_player.playerIntelligenceBoon;
	if obj_player.playerWeaponStat == 2 {
		obj_player.playerIntelligenceTotal += obj_player.playerWeaponBonus;
	}
	obj_player.playerCompassionTotal = obj_player.playerCompassionBase + obj_player.playerCompassionEffect + obj_player.playerCompassionBoon;
	if obj_player.playerWeaponStat == 3 {
		obj_player.playerCompassionTotal += obj_player.playerWeaponBonus;
	}
	
	//Set enemy stats
	
	//Set health bars
	
	global.gameState = 131;
}

if global.gameState == 131 { //Waiting for controller reset
	
	if (global.buttonLeft + global.buttonMiddle + global.buttonRight) == 0 {
		global.gameState = 132;
	}
	
}

if global.gameState == 132 { //Waiting for controller input
	
	if (global.buttonLeft + global.buttonMiddle + global.buttonRight) > 1 {
		global.gameState = 131;
	}
	else if (global.buttonLeft + global.buttonMiddle + global.buttonRight) == 1 && global.buttonLeft == 1 {
		global.gameState = 133;
	}
	else if (global.buttonLeft + global.buttonMiddle + global.buttonRight) == 1 && global.buttonMiddle == 1 {
		global.gameState = 134;
	}
	else if (global.buttonLeft + global.buttonMiddle + global.buttonRight) == 1 && global.buttonRight == 1 {
		global.gameState = 135;
	}
	
}

if global.gameState == 133 { //Escape
	
	obj_player.playerAgilityRoll = random_range(1,(2+(2*obj_player.playerAgilityTotal)));
	obj_enemy.enemySpeedRoll = random_range(1,(2+(2*obj_enemy.enemySpeed)));
	
	if obj_player.playerAgilityRoll > obj_enemy.enemySpeedRoll {
		//Escaped successfully
		global.gameState = 150;
	}
	else {
		//Escape failed
		//Play animation
		obj_player.playerGuarded = 0;
		global.gameState = 136;
	}
}

if global.gameState == 134 { //Defend
	
	//play guard animation
	obj_player.playerGuarded = 1;
	global.gameState = 136
	
}

if global.gameState == 135 { //Attack
	
	if obj_player.playerWeaponStat == 1 {
		obj_player.playerAttackRoll = random_range(1,(2+(2*obj_player.playerStrengthTotal)));
	}
	else if obj_player.playerWeaponStat == 2 {
		obj_player.playerAttackRoll = random_range(1,(2+(2*obj_player.playerIntelligenceTotal)));
	}
	else if obj_player.playerWeaponStat == 3 {
		obj_player.playerAttackRoll = random_range(1,(2+(2*obj_player.playerCompassionTotal)));
	}
	
	obj_enemy.enemyDefenseRoll = random_range(1,(2+(2*obj_enemy.enemyDefense)));
	
	obj_player.playerDamageValue = obj_player.playerAttackRoll - obj_enemy.enemyDefenseRoll
	if obj_player.playerDamageValue < 0 {
		obj_player.playerDamageValue = 0;
	}
	
	//play attack animation
	
	obj_enemy.enemyCurrentHealth -= obj_player.playerDamageValue;
	
	if obj_enemy.enemyCurrentHealth <= 0 {
		global.gameState = 151;
	}
	else {
		global.gameState = 136;
	}
	
}

if global.gameState == 136 { //Enemy Turn
	
	obj_enemy.enemyAttackRoll = random_range(1,(2+(2*obj_enemy.enemyAttack)));
	obj_player.playerEnduranceRoll = random_range(1,(2+(2*obj_player.playerEnduranceTotal)));
	if obj_player.playerWeaponStat == 1 {
		obj_player.playerAttackRoll = random_range(1,(2+(2*obj_player.playerStrengthTotal)));
	}
	else if obj_player.playerWeaponStat == 2 {
		obj_player.playerAttackRoll = random_range(1,(2+(2*obj_player.playerIntelligenceTotal)));
	}
	else if obj_player.playerWeaponStat == 3 {
		obj_player.playerAttackRoll = random_range(1,(2+(2*obj_player.playerCompassionTotal)));
	}
	
	if obj_player.playerGuarded == 0 {
		obj_enemy.enemyDamageRoll = obj_enemy.enemyAttackRoll - obj_player.playerEnduranceRoll;
	}
	else if obj_player.playerGuarded == 1 {
		obj_enemy.enemyDamageRoll = obj_enemy.enemyAttackRoll - obj_player.playerEnduranceRoll - obj_player.playerAttackRoll;
	}
	
	if obj_enemy.enemyDamageRoll < 0 {
		obj_enemy.enemyDamageRoll = 0;
	}
	
	obj_player.playerCurrentHealth -= obj_enemy.enemyDamageRoll;
	
	if obj_player.playerCurrentHealth <= 0 {
		global.gameState = 152;
	}
	else {
		global.gameState = 131;
	}
	
}

if global.gameState == 150 { //Successful Escape
	
	//Play escape animation
	
	global.gameState = 100
	
}

if global.gameState == 151 { //Victory
	
	//Play victory animation
	
	//Check encounter reward value
	
	//Set gameState to 190 to receive rewards or 100 to move on
	
}

if global.gameState == 152 { //Defeat
	
	//Play defeat animation
	
	//end game
	
}


//Rewards
if global.gameState == 190 { //Calculate rewards
	
}

if global.gameState == 191 { //Waiting for controller reset
	
}

if global.gameState == 192 { //Selection
	
}

if global.gameState == 193 { //Leave item
	
}

if global.gameState == 194 { //Take item
	
}




