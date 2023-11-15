/// @description Insert description here
// You can write your code in this editor

///The following code comprises the game's state machine. Refer to the reference document for gameState values.

//Character Creation

if global.gameState == 000 { //Start screen
	
	obj_gameMenu.visible = true;
	
	if global.buttonLeft + global.buttonMiddle + global.buttonRight > 0 {
		
		obj_gameMenu.visible = false;
		obj_characterSelection.visible = true;
		global.gameState = 001;
	}
}

if global.gameState == 001 { //Waiting for controller reset
	
	if (global.buttonLeft + global.buttonMiddle + global.buttonRight) == 0 {
		global.gameState = 002;
	}
	
}

if global.gameState == 002 { //Character Selection
	
	//Display character graphics & statistics
	
	if (global.buttonLeft + global.buttonMiddle + global.buttonRight) > 1 {
		global.gameState = 001;
	}
	else if (global.buttonLeft + global.buttonMiddle + global.buttonRight) == 1 && global.buttonLeft == 1 { //Select Mercy
		global.gameState = 003;
	}
	else if (global.buttonLeft + global.buttonMiddle + global.buttonRight) == 1 && global.buttonMiddle == 1 { //Select Wisdom
		global.gameState = 004;
	}
	else if (global.buttonLeft + global.buttonMiddle + global.buttonRight) == 1 && global.buttonRight == 1 { //Select Valor
		global.gameState = 005;
	}
	
}

if global.gameState == 003 { //Mercy
	//Hide other characters
	//Center chosen character and stats
	//Display Confirm/Deny buttons
	global.gameState = 006;
}

if global.gameState == 004 { //Wisdom
	//Hide other characters
	//Center chosen character and stats
	//Display Confirm/Deny buttons
	global.gameState = 007;
}

if global.gameState == 005 { //Valor
	//Hide other characters
	//Center chosen character and stats
	//Display Confirm/Deny buttons
	global.gameState = 008;
}

if global.gameState == 006 {
	
	if global.buttonLeft + global.buttonRight > 1 {
		global.gameState = 003;
	}
	else if global.buttonLeft == 1 {
		global.gameState = 002;
	}
	else if global.buttonRight == 1 {
		//Mercy Stats
		obj_player.playerVitalityBase = 2;
		obj_player.playerEnduranceBase = 1;
		obj_player.playerAgilityBase = 3;
		obj_player.playerStrengthBase = 2;
		obj_player.playerIntelligenceBase = 2;
		obj_player.playerCompassionBase = 3;
		
		obj_player.playerCharmBonus = 1;
		obj_player.playerArmorBonus = 1;
		obj_player.playerBootBonus = 2;
		obj_player.playerWeaponBonus = 2;
		obj_player.playerWeaponStat = 3;
		
		global.gameState = 009;
	}
	
}

if global.gameState == 007 {
	
	if global.buttonLeft + global.buttonRight > 1 {
		global.gameState = 004;
	}
	else if global.buttonLeft == 1 {
		global.gameState = 002;
	}
	else if global.buttonRight == 1 {
		//Wisdom stats
		
		obj_player.playerVitalityBase = 1;
		obj_player.playerEnduranceBase = 3;
		obj_player.playerAgilityBase = 2;
		obj_player.playerStrengthBase = 2;
		obj_player.playerIntelligenceBase = 3;
		obj_player.playerCompassionBase = 2;
		
		obj_player.playerCharmBonus = 1;
		obj_player.playerArmorBonus = 2;
		obj_player.playerBootBonus = 1;
		obj_player.playerWeaponBonus = 2;
		obj_player.playerWeaponStat = 2;
		
		global.gameState = 009;
	}
	
}

if global.gameState == 008 {
	
	if global.buttonLeft + global.buttonRight > 1 {
		global.gameState = 005;
	}
	else if global.buttonLeft == 1 {
		global.gameState = 002;
	}
	else if global.buttonRight == 1 {
		//Valor stats
		
		obj_player.playerVitalityBase = 3;
		obj_player.playerEnduranceBase = 2;
		obj_player.playerAgilityBase = 1;
		obj_player.playerStrengthBase = 3;
		obj_player.playerIntelligenceBase = 2;
		obj_player.playerCompassionBase = 2;
		
		obj_player.playerCharmBonus = 2;
		obj_player.playerArmorBonus = 1;
		obj_player.playerBootBonus = 1;
		obj_player.playerWeaponBonus = 2;
		obj_player.playerWeaponStat = 3;
		
		global.gameState = 009;
	}
	
}

if global.gameState == 009 {
	
	//Transition to gameplay
	global.gameState = 100
	
}

//Gameplay

if global.gameState == 100 { //Waiting for controller reset
	
	//Transition to selection screen
	
	if (global.buttonLeft + global.buttonMiddle + global.buttonRight) == 0 {
		global.gameState = 101;
	}
}

if global.gameState == 101 { //Choosing encounters
	
	global.encounterValue = random_range(1,11);
	global.encounter1 = global.encounterValue;
	global.encounterValue = random_range(1,11);
	global.encounter2 = global.encounterValue;
	global.encounterValue = random_range(1,11);
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
	
	//hide buttons
	//move player sprite
	
	global.gameState = 130;
	//if encounter is a challenge, set state to 160
}

if global.gameState == 105 { //Encounter setup
	global.currentEncounter = global.encounter2;
	
	//hide buttons
	//move player sprite
	
	global.gameState = 130;
	//if encounter is a challenge, set state to 160
}

if global.gameState == 106 { //Encounter setup
	global.currentEncounter = global.encounter3;
	
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
	if global.currentEncounter == 1 { //Goblin1
		obj_enemy.enemyMaxHealth = 6;
		obj_enemy.enemyAttack = 2;
		obj_enemy.enemyDefense = 1;
		obj_enemy.enemySpeed = 3;
		global.encounterValue = 0;
		obj_enemy.enemyType = 1;
	}
	else if global.currentEncounter == 2 { //Goblin2
		obj_enemy.enemyMaxHealth = 6;
		obj_enemy.enemyAttack = 2;
		obj_enemy.enemyDefense = 1;
		obj_enemy.enemySpeed = 3;
		global.encounterValue = 1;
		obj_enemy.enemyType = 1;
	}
	else if global.currentEncounter == 3 { //Wolf1
		obj_enemy.enemyMaxHealth = 6;
		obj_enemy.enemyAttack = 3;
		obj_enemy.enemyDefense = 1;
		obj_enemy.enemySpeed = 4;
		global.encounterValue = 0;
		obj_enemy.enemyType = 2;
	}
	else if global.currentEncounter == 4 { //Wolf2
		obj_enemy.enemyMaxHealth = 6;
		obj_enemy.enemyAttack = 3;
		obj_enemy.enemyDefense = 1;
		obj_enemy.enemySpeed = 4;
		global.encounterValue = 1;
		obj_enemy.enemyType = 2;
	}
	else if global.currentEncounter == 5 { //Wolf3
		obj_enemy.enemyMaxHealth = 6;
		obj_enemy.enemyAttack = 3;
		obj_enemy.enemyDefense = 1;
		obj_enemy.enemySpeed = 4;
		global.encounterValue = 2;
		obj_enemy.enemyType = 2;
	}
	else if global.currentEncounter == 6 { //Cultist1
		obj_enemy.enemyMaxHealth = 3;
		obj_enemy.enemyAttack = 3;
		obj_enemy.enemyDefense = 2;
		obj_enemy.enemySpeed = 1;
		global.encounterValue = 1;
		obj_enemy.enemyType = 3;
	}
	else if global.currentEncounter == 7 { //Cultist2
		obj_enemy.enemyMaxHealth = 3;
		obj_enemy.enemyAttack = 3;
		obj_enemy.enemyDefense = 2;
		obj_enemy.enemySpeed = 1;
		global.encounterValue = 2;
		obj_enemy.enemyType = 3;
	}
	else if global.currentEncounter == 8 { //Cultist3
		obj_enemy.enemyMaxHealth = 3;
		obj_enemy.enemyAttack = 3;
		obj_enemy.enemyDefense = 2;
		obj_enemy.enemySpeed = 1;
		global.encounterValue = 3;
		obj_enemy.enemyType = 3;
	}
	else if global.currentEncounter == 9 { //Bandit1
		obj_enemy.enemyMaxHealth = 10;
		obj_enemy.enemyAttack = 4;
		obj_enemy.enemyDefense = 3;
		obj_enemy.enemySpeed = 4;
		global.encounterValue = 2;
		obj_enemy.enemyType = 4;
	}
	else if global.currentEncounter == 10 { //Bandit2
		obj_enemy.enemyMaxHealth = 10;
		obj_enemy.enemyAttack = 4;
		obj_enemy.enemyDefense = 3;
		obj_enemy.enemySpeed = 4;
		global.encounterValue = 3;
		obj_enemy.enemyType = 4;
	}
	else if global.currentEncounter == 11 { //Bandit3
		obj_enemy.enemyMaxHealth = 10;
		obj_enemy.enemyAttack = 4;
		obj_enemy.enemyDefense = 3;
		obj_enemy.enemySpeed = 4;
		global.encounterValue = 4;
		obj_enemy.enemyType = 4;
	}
	
	obj_enemy.enemyCurrentHealth = obj_enemy.enemyMaxHealth;
	
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
	if global.encounterValue == 0 {
		global.gameState = 100;
	}
	else {
		global.gameState = 190;
	}
}

if global.gameState == 152 { //Defeat
	
	//Play defeat animation
	
	//end game
	
}


//Rewards
if global.gameState == 190 { //Calculate rewards
	global.itemType = random_range(1,6); //1 = charm, 2 = armor, 3 = boots, 4 = str weapon, 5 = int weapon, 6 = comp weapon
	global.rewardID = (global.itemType*10)+global.encounterValue;
	//Item ID is a two-digit number; the first digit indicates the type of item, the second indicates the strength of that item's bonus
	
	//Check global.rewardID and display appropriate item sprite and stats, along with the player's currently equipped item
	
	//Display Take and Leave buttons
	
	global.gameState = 191;
}

if global.gameState == 191 { //Waiting for controller reset
	if global.buttonLeft + global.buttonRight == 0 {
		global.gameState = 192;
	}
}

if global.gameState == 192 { //Selection
	
	if global.buttonLeft + global.buttonRight > 1 {
		global.gameState = 191;
	}
	else if global.buttonLeft + global.buttonRight = 1 {
		if buttonLeft = 1 {
			global.gameState = 193;
		}
		else if buttonRight = 1 {
			global.gameState = 194;
		}
	}
	
}

if global.gameState == 193 { //Leave item
	global.gameState = 100;
}

if global.gameState == 194 { //Take item
	
	if global.itemType == 1 {
		obj_player.playerCharmBonus = global.encounterValue;
	}
	else if global.itemType == 2 {
		obj_player.playerArmorBonus = global.encounterValue;
	}
	else if global.itemType == 3 {
		obj_player.playerBootBonus = global.encounterValue;
	}
	else if global.itemType >= 4 {
		obj_player.playerWeaponBonus = global.encounterValue;
		if global.itemType == 4 {
			obj_player.playerWeaponStat = 1;
		}
		else if global.itemType == 5 {
			obj_player.playerWeaponStat = 2;
		}
		else if global.itemType == 6 {
			obj_player.playerWeaponStat = 3;
		}
	}
	
}




