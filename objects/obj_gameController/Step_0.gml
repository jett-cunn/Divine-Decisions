/// @description Insert description here
// You can write your code in this editor

///The following code comprises the game's state machine. Refer to the reference document for gameState values.


/*

Reference values;
	Player instance; inst_4E48B87F
	Game controller; inst_6514177A


*/


//Character Creation

if gameState == 000 { //Start screen
	
	
	if global.buttonLeft + global.buttonMiddle + global.buttonRight > 0 {
		
		
		gameState = 001;
	}
}

if gameState == 001 { //Waiting for controller reset
	
	if (global.buttonLeft + global.buttonMiddle + global.buttonRight) == 0 {
		room_goto(rm_character);
		gameState = 002;
	}
	
}

if gameState == 002 { //Character Selection
	
	//Display character graphics
	
	if (global.buttonLeft + global.buttonMiddle + global.buttonRight) > 1 {
		gameState = 001;
	}
	else if global.buttonLeft == 1 { //Select Mercy
		global.buttonLeft = 0;
		alarm[0] = 60;
		gameState = 003;
	}
	else if global.buttonMiddle == 1 { //Select Wisdom
		global.buttonMiddle = 0;
		alarm[0] = 60;
		gameState = 004;
	}
	else if global.buttonRight == 1 { //Select Valor
		global.buttonRight = 0;
		alarm[0] = 60;
		gameState = 005;
	}
	
}

if gameState == 003 { //Mercy
	//Display stats
	//Display Confirm/Deny buttons
	gameState = 006;
}

if gameState == 004 { //Wisdom
	//Display stats
	//Display Confirm/Deny buttons
	gameState = 007;
}

if gameState == 005 { //Valor
	//Display stats
	//Display Confirm/Deny buttons
	gameState = 008;
}

if gameState == 006 {
	
	if global.buttonLeft + global.buttonRight > 1 {
		gameState = 003;
	}
	else if global.buttonLeft == 1 {
		global.buttonLeft = 0;
		alarm[0] = 60;
		gameState = 002;
	}
	else if global.buttonRight == 1 {
		global.buttonRight = 0;
		alarm[0] = 60;
		//Mercy Stats
		inst_4E48B87F.playerVitalityBase = 2;
		inst_4E48B87F.playerEnduranceBase = 1;
		inst_4E48B87F.playerAgilityBase = 3;
		inst_4E48B87F.playerStrengthBase = 2;
		inst_4E48B87F.playerIntelligenceBase = 2;
		inst_4E48B87F.playerCompassionBase = 3;
		
		inst_4E48B87F.playerCharmBonus = 1;
		inst_4E48B87F.playerArmorBonus = 1;
		inst_4E48B87F.playerBootBonus = 2;
		inst_4E48B87F.playerWeaponBonus = 2;
		inst_4E48B87F.playerWeaponStat = 3;
		
		gameState = 009;
	}
	
}

if gameState == 007 {
	
	if global.buttonLeft + global.buttonRight > 1 {
		gameState = 004;
	}
	else if global.buttonLeft == 1 {
		global.buttonLeft = 0;
		alarm[0] = 60;
		gameState = 002;
	}
	else if global.buttonRight == 1 {
		global.buttonRight = 0;
		alarm[0] = 60;
		//Wisdom stats
		
		inst_4E48B87F.playerVitalityBase = 1;
		inst_4E48B87F.playerEnduranceBase = 3;
		inst_4E48B87F.playerAgilityBase = 2;
		inst_4E48B87F.playerStrengthBase = 2;
		inst_4E48B87F.playerIntelligenceBase = 3;
		inst_4E48B87F.playerCompassionBase = 2;
		
		inst_4E48B87F.playerCharmBonus = 1;
		inst_4E48B87F.playerArmorBonus = 2;
		inst_4E48B87F.playerBootBonus = 1;
		inst_4E48B87F.playerWeaponBonus = 2;
		inst_4E48B87F.playerWeaponStat = 2;
		
		gameState = 009;
	}
	
}

if gameState == 008 {
	
	if global.buttonLeft + global.buttonRight > 1 {
		gameState = 005;
	}
	else if global.buttonLeft == 1 {
		global.buttonLeft = 0;
		alarm[0] = 60;
		gameState = 002;
	}
	else if global.buttonRight == 1 {
		global.buttonRight = 0;
		alarm[0] = 60;
		//Valor stats
		
		inst_4E48B87F.playerVitalityBase = 3;
		inst_4E48B87F.playerEnduranceBase = 2;
		inst_4E48B87F.playerAgilityBase = 1;
		inst_4E48B87F.playerStrengthBase = 3;
		inst_4E48B87F.playerIntelligenceBase = 2;
		inst_4E48B87F.playerCompassionBase = 2;
		
		inst_4E48B87F.playerCharmBonus = 2;
		inst_4E48B87F.playerArmorBonus = 1;
		inst_4E48B87F.playerBootBonus = 1;
		inst_4E48B87F.playerWeaponBonus = 2;
		inst_4E48B87F.playerWeaponStat = 3;
		
		gameState = 009;
	}
	
}


if gameState == 009 {
	
	//Transition to gameplay
	gameState = 100
	room_goto(rm_choice);
	
}

//Gameplay

if gameState == 100 { //Waiting for controller reset
	
	//Transition to selection screen
	
	if (global.buttonLeft + global.buttonMiddle + global.buttonRight) == 0 {
		gameState = 101;
	}
}

if gameState == 101 { //Choosing encounters
	
	global.encounterValue = random_range(1,11);
	global.encounter1 = global.encounterValue;
	global.encounterValue = random_range(1,11);
	global.encounter2 = global.encounterValue;
	global.encounterValue = random_range(1,11);
	global.encounter3 = global.encounterValue;
	
	gameState = 102;
}

if gameState == 102 { //Presenting options
	
	//Show buttons
	
	//Set text
	
	if (global.buttonLeft + global.buttonMiddle + global.buttonRight) == 0 {
		gameState = 103;
	}
}

if gameState == 103 { //Selection
	
	if (global.buttonLeft + global.buttonMiddle + global.buttonRight) > 1 {
		gameState = 102;
	}
	else if (global.buttonLeft + global.buttonMiddle + global.buttonRight) == 1 && global.buttonLeft == 1 {
		gameState = 104;
	}
	else if (global.buttonLeft + global.buttonMiddle + global.buttonRight) == 1 && global.buttonMiddle == 1 {
		gameState = 105;
	}
	else if (global.buttonLeft + global.buttonMiddle + global.buttonRight) == 1 && global.buttonRight == 1 {
		gameState = 106;
	}
	
}

if gameState == 104 { //Encounter setup
	global.currentEncounter = global.encounter1;
	
	//hide buttons
	//move player sprite
	
	gameState = 130;
	//if encounter is a challenge, set state to 160
}

if gameState == 105 { //Encounter setup
	global.currentEncounter = global.encounter2;
	
	//hide buttons
	//move player sprite
	
	gameState = 130;
	//if encounter is a challenge, set state to 160
}

if gameState == 106 { //Encounter setup
	global.currentEncounter = global.encounter3;
	
	//hide buttons
	//move player sprite
	
	gameState = 130;
	//if encounter is a challenge, set state to 160
}

//Combat
if gameState == 130 { //Setup
	
	//Calculate player stats
	inst_4E48B87F.playerVitalityTotal = inst_4E48B87F.playerVitalityBase + inst_4E48B87F.playerCharmBonus;
	inst_4E48B87F.playerEnduranceTotal = inst_4E48B87F.playerEnduranceBase + inst_4E48B87F.playerArmorBonus;
	inst_4E48B87F.playerAgilityTotal = inst_4E48B87F.playerAgilityBase + inst_4E48B87F.playerBootBonus;
	inst_4E48B87F.playerStrengthTotal = inst_4E48B87F.playerStrengthBase;
	if inst_4E48B87F.playerWeaponStat == 1 {
		inst_4E48B87F.playerStrengthTotal += inst_4E48B87F.playerWeaponBonus;
	}
	inst_4E48B87F.playerIntelligenceTotal = inst_4E48B87F.playerIntelligenceBase;
	if inst_4E48B87F.playerWeaponStat == 2 {
		inst_4E48B87F.playerIntelligenceTotal += inst_4E48B87F.playerWeaponBonus;
	}
	inst_4E48B87F.playerCompassionTotal = inst_4E48B87F.playerCompassionBase;
	if inst_4E48B87F.playerWeaponStat == 3 {
		inst_4E48B87F.playerCompassionTotal += inst_4E48B87F.playerWeaponBonus;
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
	
	gameState = 131;
}

if gameState == 131 { //Waiting for controller reset
	
	if (global.buttonLeft + global.buttonMiddle + global.buttonRight) == 0 {
		gameState = 132;
	}
	
}

if gameState == 132 { //Waiting for controller input
	
	if (global.buttonLeft + global.buttonMiddle + global.buttonRight) > 1 {
		gameState = 131;
	}
	else if (global.buttonLeft + global.buttonMiddle + global.buttonRight) == 1 && global.buttonLeft == 1 {
		gameState = 133;
	}
	else if (global.buttonLeft + global.buttonMiddle + global.buttonRight) == 1 && global.buttonMiddle == 1 {
		gameState = 134;
	}
	else if (global.buttonLeft + global.buttonMiddle + global.buttonRight) == 1 && global.buttonRight == 1 {
		gameState = 135;
	}
	
}

if gameState == 133 { //Escape
	
	inst_4E48B87F.playerAgilityRoll = random_range(1,(2+(2*inst_4E48B87F.playerAgilityTotal)));
	obj_enemy.enemySpeedRoll = random_range(1,(2+(2*obj_enemy.enemySpeed)));
	
	if inst_4E48B87F.playerAgilityRoll > obj_enemy.enemySpeedRoll {
		//Escaped successfully
		gameState = 150;
	}
	else {
		//Escape failed
		//Play animation
		inst_4E48B87F.playerGuarded = 0;
		gameState = 136;
	}
}

if gameState == 134 { //Defend
	
	//play guard animation
	inst_4E48B87F.playerGuarded = 1;
	gameState = 136
	
}

if gameState == 135 { //Attack
	
	if inst_4E48B87F.playerWeaponStat == 1 {
		inst_4E48B87F.playerAttackRoll = random_range(1,(2+(2*inst_4E48B87F.playerStrengthTotal)));
	}
	else if inst_4E48B87F.playerWeaponStat == 2 {
		inst_4E48B87F.playerAttackRoll = random_range(1,(2+(2*inst_4E48B87F.playerIntelligenceTotal)));
	}
	else if inst_4E48B87F.playerWeaponStat == 3 {
		inst_4E48B87F.playerAttackRoll = random_range(1,(2+(2*inst_4E48B87F.playerCompassionTotal)));
	}
	
	obj_enemy.enemyDefenseRoll = random_range(1,(2+(2*obj_enemy.enemyDefense)));
	
	inst_4E48B87F.playerDamageValue = inst_4E48B87F.playerAttackRoll - obj_enemy.enemyDefenseRoll
	if inst_4E48B87F.playerDamageValue < 0 {
		inst_4E48B87F.playerDamageValue = 0;
	}
	
	//play attack animation
	
	obj_enemy.enemyCurrentHealth -= inst_4E48B87F.playerDamageValue;
	
	if obj_enemy.enemyCurrentHealth <= 0 {
		gameState = 151;
	}
	else {
		gameState = 136;
	}
	
}

if gameState == 136 { //Enemy Turn
	
	obj_enemy.enemyAttackRoll = random_range(1,(2+(2*obj_enemy.enemyAttack)));
	inst_4E48B87F.playerEnduranceRoll = random_range(1,(2+(2*inst_4E48B87F.playerEnduranceTotal)));
	if inst_4E48B87F.playerWeaponStat == 1 {
		inst_4E48B87F.playerAttackRoll = random_range(1,(2+(2*inst_4E48B87F.playerStrengthTotal)));
	}
	else if inst_4E48B87F.playerWeaponStat == 2 {
		inst_4E48B87F.playerAttackRoll = random_range(1,(2+(2*inst_4E48B87F.playerIntelligenceTotal)));
	}
	else if inst_4E48B87F.playerWeaponStat == 3 {
		inst_4E48B87F.playerAttackRoll = random_range(1,(2+(2*inst_4E48B87F.playerCompassionTotal)));
	}
	
	if inst_4E48B87F.playerGuarded == 0 {
		obj_enemy.enemyDamageRoll = obj_enemy.enemyAttackRoll - inst_4E48B87F.playerEnduranceRoll;
	}
	else if inst_4E48B87F.playerGuarded == 1 {
		obj_enemy.enemyDamageRoll = obj_enemy.enemyAttackRoll - inst_4E48B87F.playerEnduranceRoll - inst_4E48B87F.playerAttackRoll;
	}
	
	if obj_enemy.enemyDamageRoll < 0 {
		obj_enemy.enemyDamageRoll = 0;
	}
	
	inst_4E48B87F.playerCurrentHealth -= obj_enemy.enemyDamageRoll;
	
	if inst_4E48B87F.playerCurrentHealth <= 0 {
		gameState = 152;
	}
	else {
		gameState = 131;
	}
	
}

if gameState == 150 { //Successful Escape
	
	//Play escape animation
	
	gameState = 100
	
}

if gameState == 151 { //Victory
	
	//Play victory animation
	
	//Check encounter reward value
	
	//Set gameState to 190 to receive rewards or 100 to move on
	if global.encounterValue == 0 {
		gameState = 100;
	}
	else {
		gameState = 190;
	}
}

if gameState == 152 { //Defeat
	
	//Play defeat animation
	
	//end game
	
}


//Rewards
if gameState == 190 { //Calculate rewards
	global.itemType = random_range(1,6); //1 = charm, 2 = armor, 3 = boots, 4 = str weapon, 5 = int weapon, 6 = comp weapon
	global.rewardID = (global.itemType*10)+global.encounterValue;
	//Item ID is a two-digit number; the first digit indicates the type of item, the second indicates the strength of that item's bonus
	
	//Check global.rewardID and display appropriate item sprite and stats, along with the player's currently equipped item
	
	//Display Take and Leave buttons
	
	gameState = 191;
}

if gameState == 191 { //Waiting for controller reset
	if global.buttonLeft + global.buttonRight == 0 {
		gameState = 192;
	}
}

if gameState == 192 { //Selection
	
	if global.buttonLeft + global.buttonRight > 1 {
		gameState = 191;
	}
	else if global.buttonLeft + global.buttonRight = 1 {
		if global.buttonLeft = 1 {
			gameState = 193;
		}
		else if buttonRight = 1 {
			gameState = 194;
		}
	}
	
}

if gameState == 193 { //Leave item
	gameState = 100;
}

if gameState == 194 { //Take item
	
	if global.itemType == 1 {
		inst_4E48B87F.playerCharmBonus = global.encounterValue;
	}
	else if global.itemType == 2 {
		inst_4E48B87F.playerArmorBonus = global.encounterValue;
	}
	else if global.itemType == 3 {
		inst_4E48B87F.playerBootBonus = global.encounterValue;
	}
	else if global.itemType >= 4 {
		inst_4E48B87F.playerWeaponBonus = global.encounterValue;
		if global.itemType == 4 {
			inst_4E48B87F.playerWeaponStat = 1;
		}
		else if global.itemType == 5 {
			inst_4E48B87F.playerWeaponStat = 2;
		}
		else if global.itemType == 6 {
			inst_4E48B87F.playerWeaponStat = 3;
		}
	}
	
}




