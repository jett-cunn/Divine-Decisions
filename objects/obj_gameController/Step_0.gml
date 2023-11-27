/// @description Insert description here
// You can write your code in this editor

///The following code comprises the game's state machine. Refer to the reference document for gameState values.


/*

Reference values;
	Game controller; inst_6514177A


*/


//Character Creation

if gameState == 000 { //Start screen
	
	
	if buttonLeft + buttonMiddle + buttonRight > 0 {
		
		
		gameState = 001;
	}
}

if gameState == 001 { //Waiting for controller reset
	
	if (buttonLeft + buttonMiddle + buttonRight) == 0 {
		gameState = 002;
		room_goto(rm_character);
	}
	
}

if gameState == 002 { //Character Selection
	
	
	
	
	buttonLeftVisible = true;
	buttonMiddleVisible = true;
	buttonRightVisible = true;
	
	buttonLeftTextA = "Choose Mercy"
	buttonLeftTextB = "";
	buttonMiddleTextA = "Choose Wisdom"
	buttonMiddleTextB = "";
	buttonRightTextA = "Choose Valor"
	buttonRightTextB = "";
	
	
	
	if (buttonLeft + buttonMiddle + buttonRight) > 1 {
		gameState = 001;
	}
	else if buttonLeft == 1 { //Select Mercy
		buttonLeft = 0;
		alarm[0] = 60;
		gameState = 003;
	}
	else if buttonMiddle == 1 { //Select Wisdom
		buttonMiddle = 0;
		alarm[0] = 60;
		gameState = 004;
	}
	else if buttonRight == 1 { //Select Valor
		buttonRight = 0;
		alarm[0] = 60;
		gameState = 005;
	}
	
}

if gameState == 003 { //Mercy
	
	buttonMiddleVisible = false;
	
	buttonLeftTextA = "Deny"
	buttonRightTextA = "Confirm"
	
	gameState = 006;
}

if gameState == 004 { //Wisdom
	
	buttonMiddleVisible = false;
	
	buttonLeftTextA = "Deny"
	buttonRightTextA = "Confirm"
	
	gameState = 007;
}

if gameState == 005 { //Valor
	
	buttonMiddleVisible = false;
	
	buttonLeftTextA = "Deny"
	buttonRightTextA = "Confirm"
	
	gameState = 008;
}

if gameState == 006 {
	
	if buttonLeft + buttonRight > 1 {
		gameState = 003;
	}
	else if buttonLeft == 1 {
		buttonLeft = 0;
		alarm[0] = 60;
		gameState = 002;
	}
	else if buttonRight == 1 {
		buttonRight = 0;
		alarm[0] = 60;
		//Mercy Stats
		playerVitalityBase = 2;
		playerEnduranceBase = 1;
		playerAgilityBase = 3;
		playerStrengthBase = 2;
		playerIntelligenceBase = 2;
		playerCompassionBase = 3;
		
		playerCharmBonus = 1;
		playerArmorBonus = 1;
		playerBootBonus = 2;
		playerWeaponBonus = 2;
		playerWeaponStat = 3;
		
		gameState = 009;
	}
	
}

if gameState == 007 {
	
	if buttonLeft + buttonRight > 1 {
		gameState = 004;
	}
	else if buttonLeft == 1 {
		buttonLeft = 0;
		alarm[0] = 60;
		gameState = 002;
	}
	else if buttonRight == 1 {
		buttonRight = 0;
		alarm[0] = 60;
		//Wisdom stats
		
		playerVitalityBase = 1;
		playerEnduranceBase = 3;
		playerAgilityBase = 2;
		playerStrengthBase = 2;
		playerIntelligenceBase = 3;
		playerCompassionBase = 2;
		
		playerCharmBonus = 1;
		playerArmorBonus = 2;
		playerBootBonus = 1;
		playerWeaponBonus = 2;
		playerWeaponStat = 2;
		
		gameState = 009;
	}
	
}

if gameState == 008 {
	
	if buttonLeft + buttonRight > 1 {
		gameState = 005;
	}
	else if buttonLeft == 1 {
		buttonLeft = 0;
		alarm[0] = 60;
		gameState = 002;
	}
	else if buttonRight == 1 {
		buttonRight = 0;
		alarm[0] = 60;
		//Valor stats
		
		playerVitalityBase = 3;
		playerEnduranceBase = 2;
		playerAgilityBase = 1;
		playerStrengthBase = 3;
		playerIntelligenceBase = 2;
		playerCompassionBase = 2;
		
		playerCharmBonus = 2;
		playerArmorBonus = 1;
		playerBootBonus = 1;
		playerWeaponBonus = 2;
		playerWeaponStat = 3;
		
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
	
	if (buttonLeft + buttonMiddle + buttonRight) == 0 {
		gameState = 101;
	}
}

if gameState == 101 { //Choosing encounters
	
	encounterValue = random_range(1,11);
	encounter1 = encounterValue;
	encounterValue = random_range(1,11);
	encounter2 = encounterValue;
	encounterValue = random_range(1,11);
	encounter3 = encounterValue;
	
	gameState = 102;
}

if gameState == 102 { //Presenting options
	
	//Show buttons
	buttonLeftVisible = true
	buttonMiddleVisible = true
	buttonRightVisible = true
	
	//Set text for each button based on encounter
	if encounter1 == 1 {
		buttonLeftTextA = encounterText1A
		buttonLeftTextB = encounterText1B
	}
	else if encounter1 == 2 {
		buttonLeftTextA = encounterText2A
		buttonLeftTextB = encounterText2B
	}
	else if encounter1 == 3 {
		buttonLeftTextA = encounterText3A
		buttonLeftTextB = encounterText3B
	}
	else if encounter1 == 4 {
		buttonLeftTextA = encounterText4A
		buttonLeftTextB = encounterText4B
	}
	else if encounter1 == 5 {
		buttonLeftTextA = encounterText5A
		buttonLeftTextB = encounterText5B
	}
	else if encounter1 == 6 {
		buttonLeftTextA = encounterText6A
		buttonLeftTextB = encounterText6B
	}
	else if encounter1 == 7 {
		buttonLeftTextA = encounterText7A
		buttonLeftTextB = encounterText7B
	}
	else if encounter1 == 8 {
		buttonLeftTextA = encounterText8A
		buttonLeftTextB = encounterText8B
	}
	else if encounter1 == 9 {
		buttonLeftTextA = encounterText9A
		buttonLeftTextB = encounterText9B
	}
	else if encounter1 == 10 {
		buttonLeftTextA = encounterText10A
		buttonLeftTextB = encounterText10B
	}
	else if encounter1 == 11 {
		buttonLeftTextA = encounterText11A
		buttonLeftTextB = encounterText11B
	}
	
	
	if encounter2 == 1 {
		buttonMiddleTextA = encounterText1A
		buttonMiddleTextB = encounterText1B
	}
	else if encounter2 == 2 {
		buttonMiddleTextA = encounterText2A
		buttonMiddleTextB = encounterText2B
	}
	else if encounter2 == 3 {
		buttonMiddleTextA = encounterText3A
		buttonMiddleTextB = encounterText3B
	}
	else if encounter2 == 4 {
		buttonMiddleTextA = encounterText4A
		buttonMiddleTextB = encounterText4B
	}
	else if encounter2 == 5 {
		buttonMiddleTextA = encounterText5A
		buttonMiddleTextB = encounterText5B
	}
	else if encounter2 == 6 {
		buttonMiddleTextA = encounterText6A
		buttonMiddleTextB = encounterText6B
	}
	else if encounter2 == 7 {
		buttonMiddleTextA = encounterText7A
		buttonMiddleTextB = encounterText7B
	}
	else if encounter2 == 8 {
		buttonMiddleTextA = encounterText8A
		buttonMiddleTextB = encounterText8B
	}
	else if encounter2 == 9 {
		buttonMiddleTextA = encounterText9A
		buttonMiddleTextB = encounterText9B
	}
	else if encounter2 == 10 {
		buttonMiddleTextA = encounterText10A
		buttonMiddleTextB = encounterText10B
	}
	else if encounter2 == 11 {
		buttonMiddleTextA = encounterText11A
		buttonMiddleTextB = encounterText11B
	}
	
	
	if encounter3 == 1 {
		buttonRightTextA = encounterText1A
		buttonRightTextB = encounterText1B
	}
	else if encounter3 == 2 {
		buttonRightTextA = encounterText2A
		buttonRightTextB = encounterText2B
	}
	else if encounter3 == 3 {
		buttonRightTextA = encounterText3A
		buttonRightTextB = encounterText3B
	}
	else if encounter3 == 4 {
		buttonRightTextA = encounterText4A
		buttonRightTextB = encounterText4B
	}
	else if encounter3 == 5 {
		buttonRightTextA = encounterText5A
		buttonRightTextB = encounterText5B
	}
	else if encounter3 == 6 {
		buttonRightTextA = encounterText6A
		buttonRightTextB = encounterText6B
	}
	else if encounter3 == 7 {
		buttonRightTextA = encounterText7A
		buttonRightTextB = encounterText7B
	}
	else if encounter3 == 8 {
		buttonRightTextA = encounterText8A
		buttonRightTextB = encounterText8B
	}
	else if encounter3 == 9 {
		buttonRightTextA = encounterText9A
		buttonRightTextB = encounterText9B
	}
	else if encounter3 == 10 {
		buttonRightTextA = encounterText10A
		buttonRightTextB = encounterText10B
	}
	else if encounter3 == 11 {
		buttonRightTextA = encounterText11A
		buttonRightTextB = encounterText11B
	}
	
	
	
	if (buttonLeft + buttonMiddle + buttonRight) == 0 {
		gameState = 103;
	}
}

if gameState == 103 { //Selection
	
	if (buttonLeft + buttonMiddle + buttonRight) > 1 {
		gameState = 102;
	}
	else if (buttonLeft + buttonMiddle + buttonRight) == 1 && buttonLeft == 1 {
		gameState = 104;
	}
	else if (buttonLeft + buttonMiddle + buttonRight) == 1 && buttonMiddle == 1 {
		gameState = 105;
	}
	else if (buttonLeft + buttonMiddle + buttonRight) == 1 && buttonRight == 1 {
		gameState = 106;
	}
	
}

if gameState == 104 { //Encounter setup
	currentEncounter = encounter1;
	
	//hide buttons
	//move player sprite
	
	gameState = 130;
	//if encounter is a challenge, set state to 160 (not needed in prototype)
}

if gameState == 105 { //Encounter setup
	currentEncounter = encounter2;
	
	//hide buttons
	//move player sprite
	
	gameState = 130;
	//if encounter is a challenge, set state to 160 (not needed in prototype)
}

if gameState == 106 { //Encounter setup
	currentEncounter = encounter3;
	
	//hide buttons
	//move player sprite
	
	gameState = 130;
	//if encounter is a challenge, set state to 160 (not needed in prototype)
}

//Combat
if gameState == 130 { //Setup
	
	room_goto(rm_fight);
	
	//Calculate player stats
	playerVitalityTotal = playerVitalityBase + playerCharmBonus;
	playerEnduranceTotal = playerEnduranceBase + playerArmorBonus;
	playerAgilityTotal = playerAgilityBase + playerBootBonus;
	playerStrengthTotal = playerStrengthBase;
	if playerWeaponStat == 1 {
		playerStrengthTotal += playerWeaponBonus;
	}
	playerIntelligenceTotal = playerIntelligenceBase;
	if playerWeaponStat == 2 {
		playerIntelligenceTotal += playerWeaponBonus;
	}
	playerCompassionTotal = playerCompassionBase;
	if playerWeaponStat == 3 {
		playerCompassionTotal += playerWeaponBonus;
	}
	
	//Set enemy stats
	if currentEncounter == 1 { //Goblin1
		enemyMaxHealth = 6;
		enemyAttack = 2;
		enemyDefense = 1;
		enemySpeed = 3;
		encounterValue = 0;
		enemyType = 1;
	}
	else if currentEncounter == 2 { //Goblin2
		enemyMaxHealth = 6;
		enemyAttack = 2;
		enemyDefense = 1;
		enemySpeed = 3;
		encounterValue = 1;
		enemyType = 1;
	}
	else if currentEncounter == 3 { //Wolf1
		enemyMaxHealth = 6;
		enemyAttack = 3;
		enemyDefense = 1;
		enemySpeed = 4;
		encounterValue = 0;
		enemyType = 2;
	}
	else if currentEncounter == 4 { //Wolf2
		enemyMaxHealth = 6;
		enemyAttack = 3;
		enemyDefense = 1;
		enemySpeed = 4;
		encounterValue = 1;
		enemyType = 2;
	}
	else if currentEncounter == 5 { //Wolf3
		enemyMaxHealth = 6;
		enemyAttack = 3;
		enemyDefense = 1;
		enemySpeed = 4;
		encounterValue = 2;
		enemyType = 2;
	}
	else if currentEncounter == 6 { //Cultist1
		enemyMaxHealth = 3;
		enemyAttack = 3;
		enemyDefense = 2;
		enemySpeed = 1;
		encounterValue = 1;
		enemyType = 3;
	}
	else if currentEncounter == 7 { //Cultist2
		enemyMaxHealth = 3;
		enemyAttack = 3;
		enemyDefense = 2;
		enemySpeed = 1;
		encounterValue = 2;
		enemyType = 3;
	}
	else if currentEncounter == 8 { //Cultist3
		enemyMaxHealth = 3;
		enemyAttack = 3;
		enemyDefense = 2;
		enemySpeed = 1;
		encounterValue = 3;
		enemyType = 3;
	}
	else if currentEncounter == 9 { //Bandit1
		enemyMaxHealth = 10;
		enemyAttack = 4;
		enemyDefense = 3;
		enemySpeed = 4;
		encounterValue = 2;
		enemyType = 4;
	}
	else if currentEncounter == 10 { //Bandit2
		enemyMaxHealth = 10;
		enemyAttack = 4;
		enemyDefense = 3;
		enemySpeed = 4;
		encounterValue = 3;
		enemyType = 4;
	}
	else if currentEncounter == 11 { //Bandit3
		enemyMaxHealth = 10;
		enemyAttack = 4;
		enemyDefense = 3;
		enemySpeed = 4;
		encounterValue = 4;
		enemyType = 4;
	}
	
	enemyCurrentHealth = enemyMaxHealth;
	
	//Set health bars
	
	gameState = 131;
}

if gameState == 131 { //Waiting for controller reset
	
	if (buttonLeft + buttonMiddle + buttonRight) == 0 {
		gameState = 132;
	}
	
}

if gameState == 132 { //Waiting for controller input
	
	if (buttonLeft + buttonMiddle + buttonRight) > 1 {
		gameState = 131;
	}
	else if (buttonLeft + buttonMiddle + buttonRight) == 1 && buttonLeft == 1 {
		gameState = 133;
	}
	else if (buttonLeft + buttonMiddle + buttonRight) == 1 && buttonMiddle == 1 {
		gameState = 134;
	}
	else if (buttonLeft + buttonMiddle + buttonRight) == 1 && buttonRight == 1 {
		gameState = 135;
	}
	
}

if gameState == 133 { //Escape
	
	playerAgilityRoll = random_range(1,(2+(2*playerAgilityTotal)));
	enemySpeedRoll = random_range(1,(2+(2*enemySpeed)));
	
	if playerAgilityRoll > enemySpeedRoll {
		//Escaped successfully
		gameState = 150;
	}
	else {
		//Escape failed
		//Play animation
		playerGuarded = 0;
		gameState = 136;
	}
}

if gameState == 134 { //Defend
	
	//play guard animation
	playerGuarded = 1;
	gameState = 136
	
}

if gameState == 135 { //Attack
	
	if playerWeaponStat == 1 {
		playerAttackRoll = random_range(1,(2+(2*playerStrengthTotal)));
	}
	else if playerWeaponStat == 2 {
		playerAttackRoll = random_range(1,(2+(2*playerIntelligenceTotal)));
	}
	else if playerWeaponStat == 3 {
		playerAttackRoll = random_range(1,(2+(2*playerCompassionTotal)));
	}
	
	enemyDefenseRoll = random_range(1,(2+(2*enemyDefense)));
	
	playerDamageValue = playerAttackRoll - enemyDefenseRoll
	if playerDamageValue < 0 {
		playerDamageValue = 0;
	}
	
	//play attack animation
	
	enemyCurrentHealth -= playerDamageValue;
	
	if enemyCurrentHealth <= 0 {
		gameState = 151;
	}
	else {
		gameState = 136;
	}
	
}

if gameState == 136 { //Enemy Turn
	
	enemyAttackRoll = random_range(1,(2+(2*enemyAttack)));
	playerEnduranceRoll = random_range(1,(2+(2*playerEnduranceTotal)));
	if playerWeaponStat == 1 {
		playerAttackRoll = random_range(1,(2+(2*playerStrengthTotal)));
	}
	else if playerWeaponStat == 2 {
		playerAttackRoll = random_range(1,(2+(2*playerIntelligenceTotal)));
	}
	else if playerWeaponStat == 3 {
		playerAttackRoll = random_range(1,(2+(2*playerCompassionTotal)));
	}
	
	if playerGuarded == 0 {
		enemyDamageRoll = enemyAttackRoll - playerEnduranceRoll;
	}
	else if playerGuarded == 1 {
		enemyDamageRoll = enemyAttackRoll - playerEnduranceRoll - playerAttackRoll;
	}
	
	if enemyDamageRoll < 0 {
		enemyDamageRoll = 0;
	}
	
	playerCurrentHealth -= enemyDamageRoll;
	
	if playerCurrentHealth <= 0 {
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
	if encounterValue == 0 {
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
	itemType = random_range(1,6); //1 = charm, 2 = armor, 3 = boots, 4 = str weapon, 5 = int weapon, 6 = comp weapon
	rewardID = (itemType*10)+encounterValue;
	//Item ID is a two-digit number; the first digit indicates the type of item, the second indicates the strength of that item's bonus
	
	//Check rewardID and display appropriate item name and stats, along with the player's currently equipped item
	
	//Display Take and Leave buttons
	
	gameState = 191;
}

if gameState == 191 { //Waiting for controller reset
	if buttonLeft + buttonRight == 0 {
		gameState = 192;
	}
}

if gameState == 192 { //Selection
	
	if buttonLeft + buttonRight > 1 {
		gameState = 191;
	}
	else if buttonLeft + buttonRight = 1 {
		if buttonLeft = 1 {
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
	
	if itemType == 1 {
		playerCharmBonus = encounterValue;
	}
	else if itemType == 2 {
		playerArmorBonus = encounterValue;
	}
	else if itemType == 3 {
		playerBootBonus = encounterValue;
	}
	else if itemType >= 4 {
		playerWeaponBonus = encounterValue;
		if itemType == 4 {
			playerWeaponStat = 1;
		}
		else if itemType == 5 {
			playerWeaponStat = 2;
		}
		else if itemType == 6 {
			playerWeaponStat = 3;
		}
	}
	
}




