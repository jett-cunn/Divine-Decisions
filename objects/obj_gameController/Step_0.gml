///The following code comprises the game's state machine. Refer to the reference document for gameState values.


/*

Reference values;
	Game controller; inst_6514177A


*/


//Character Creation

if gameState == 000 { //Start screen
	
	
	if buttonLeft + buttonRight == 1 {
		
		if buttonLeft == 1 { // Endless Mode
			storyActive = 0;
		}
		else if buttonRight == 1 { // Story Mode
			storyActive = 1;
		}
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
	
	score = 0;
	
	
	buttonLeftVisible = true;
	buttonMiddleVisible = true;
	buttonRightVisible = true;
	
	buttonLeftTextA = "Choose Mercy"
	buttonLeftTextB = "";
	buttonLeftTextC = "";
	buttonMiddleTextA = "Choose Wisdom"
	buttonMiddleTextB = "";
	buttonMiddleTextC = "";
	buttonRightTextA = "Choose Valor"
	buttonRightTextB = "";
	buttonRightTextC = "";
	
	
	
		
		if (buttonLeft + buttonMiddle + buttonRight) > 1 {
			gameState = 001;
		}
		else if buttonLeft == 1 { //Select Mercy
			buttonLeft = 0;
			buttonLeftPressed = true;
			alarm[0] = 60;
			gameState = 003;
		}
		else if buttonMiddle == 1 { //Select Wisdom
			buttonMiddle = 0;
			buttonMiddlePressed = true;
			alarm[0] = 60;
			gameState = 004;
		}
		else if buttonRight == 1 { //Select Valor
			buttonRight = 0;
			buttonRightPressed = true;
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
		buttonLeftPressed = true;
		alarm[0] = 60;
		gameState = 002;
	}
	else if buttonRight == 1 {
		buttonRight = 0;
		buttonRightPressed = true;
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
		
		playerVitalityTotal = playerVitalityBase + playerCharmBonus;
		playerMaxHealth = (2 * playerVitalityTotal) + 2;
		playerCurrentHealth = playerMaxHealth;
		
		gameState = 009;
	}
	
}

if gameState == 007 {
	
	if buttonLeft + buttonRight > 1 {
		gameState = 004;
	}
	else if buttonLeft == 1 {
		buttonLeft = 0;
		buttonLeftPressed = true;
		alarm[0] = 60;
		gameState = 002;
	}
	else if buttonRight == 1 {
		buttonRight = 0;
		buttonRightPressed = true;
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
		
		playerVitalityTotal = playerVitalityBase + playerCharmBonus;
		playerMaxHealth = (2 * playerVitalityTotal) + 2;
		playerCurrentHealth = playerMaxHealth;
		
		gameState = 009;
	}
	
}

if gameState == 008 {
	
	if buttonLeft + buttonRight > 1 {
		gameState = 005;
	}
	else if buttonLeft == 1 {
		buttonLeft = 0;
		buttonLeftPressed = true;
		alarm[0] = 60;
		gameState = 002;
	}
	else if buttonRight == 1 {
		buttonRight = 0;
		buttonRightPressed = true;
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
		playerWeaponStat = 1;
		
		playerVitalityTotal = playerVitalityBase + playerCharmBonus;
		playerMaxHealth = (2 * playerVitalityTotal) + 2;
		playerCurrentHealth = playerMaxHealth;
		
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
	
	
	
	encounterRoll1 = areaListPrototype[irandom_range(1, array_length(areaListPrototype))-1];
	encounter1 = encounterRoll1;
	encounterRoll2 = areaListPrototype[irandom_range(1, array_length(areaListPrototype))-1];
	encounter2 = encounterRoll2;
	encounterRoll3 = areaListPrototype[irandom_range(1, array_length(areaListPrototype))-1];
	encounter3 = encounterRoll3;
	
	gameState = 102;
}

if gameState == 102 { //Presenting options
	
	//Show buttons
	buttonLeftVisible = true
	buttonMiddleVisible = true
	buttonRightVisible = true
	
	//Set text for each button based on encounter
	
	encounterData = encounterDatabase[encounter1-1]
	encounterDataParsed = string_split(encounterData, ".")
	
	buttonLeftTextA = encounterDataParsed[array_length(encounterDataParsed)-3]
	buttonLeftTextB = encounterDataParsed[array_length(encounterDataParsed)-2]
	buttonLeftTextC = encounterDataParsed[array_length(encounterDataParsed)-1]
	
	encounterData = encounterDatabase[encounter2-1]	
	encounterDataParsed = string_split(encounterData, ".")
	
	buttonMiddleTextA = encounterDataParsed[array_length(encounterDataParsed)-3]
	buttonMiddleTextB = encounterDataParsed[array_length(encounterDataParsed)-2]
	buttonMiddleTextC = encounterDataParsed[array_length(encounterDataParsed)-1]
	
	encounterData = encounterDatabase[encounter3-1]	 
	encounterDataParsed = string_split(encounterData, ".")
	
	buttonRightTextA = encounterDataParsed[array_length(encounterDataParsed)-3]
	buttonRightTextB = encounterDataParsed[array_length(encounterDataParsed)-2]
	buttonRightTextC = encounterDataParsed[array_length(encounterDataParsed)-1]
	
	
	if (buttonLeft + buttonMiddle + buttonRight) == 0 {
		gameState = 103;
	}
}

if gameState == 103 { //Selection
	
	
	if playerWaiting == false {
		alarm[2] = 600;
		playerWaiting = true
	}
	
	if alarm[2] > 0 && divineInfluence > 0 {
		if (buttonLeft + buttonMiddle + buttonRight) > 1 {
			gameState = 102;
			playerWaiting = false;
			alarm[2] = 0;
		}
		else if (buttonLeft + buttonMiddle + buttonRight) == 1 && buttonLeft == 1 {
			gameState = 104;
			divineInfluence -= 1;
			playerWaiting = false;
			alarm[2] = 0;
			buttonLeftPressed = true;
		}
		else if (buttonLeft + buttonMiddle + buttonRight) == 1 && buttonMiddle == 1 {
			gameState = 105;
			divineInfluence -= 1;
			playerWaiting = false;
			alarm[2] = 0;
			buttonMiddlePressed = true;
		}
		else if (buttonLeft + buttonMiddle + buttonRight) == 1 && buttonRight == 1 {
			gameState = 106;
			divineInfluence -= 1;
			playerWaiting = false;
			alarm[2] = 0;
			buttonRightPressed = true;
		}
		
	}
	
	if alarm[2] == 0 && playerWaiting == true {
		
		var randomSelection = irandom(2)+1;
		
		if randomSelection == 1 {
			gameState = 104;
			playerWaiting = false;
			buttonLeftPressed = true;
		}
		else if randomSelection == 2 {
			gameState = 105;
			playerWaiting = false;
			buttonMiddlePressed = true;
		}
		else if randomSelection == 3 {
			gameState = 106;
			playerWaiting = false;
			buttonRightPressed = true;
		}
		
	}
	
}

if gameState == 104 { //Encounter setup
	currentEncounter = encounter1 - 1;
	
	//hide buttons
	//move player sprite
	encounterData = encounterDatabase[encounter1-1]	;
	encounterDataParsed = string_split(encounterData, ".");
	
	if real(encounterDataParsed[1]) == 1 {
		gameState = 130; //Combat
	}
	else if real(encounterDataParsed[1]) == 2 {
		gameState = 160; //Challenge
	}
	else if real(encounterDataParsed[1]) == 3 {
		gameState = 180; //Shrine
	}
}

if gameState == 105 { //Encounter setup
	currentEncounter = encounter2 - 1;
	
	//hide buttons
	//move player sprite
	
	encounterData = encounterDatabase[encounter2-1];
	encounterDataParsed = string_split(encounterData, ".");
	
	if real(encounterDataParsed[1]) == 1 {
		gameState = 130; //Combat
	}
	else if real(encounterDataParsed[1]) == 2 {
		gameState = 160; //Challenge
	}
	else if real(encounterDataParsed[1]) == 3 {
		gameState = 180; //Shrine
	}
}

if gameState == 106 { //Encounter setup
	currentEncounter = encounter3 - 1;
	
	//hide buttons
	//move player sprite
	
	encounterData = encounterDatabase[encounter3-1];
	encounterDataParsed = string_split(encounterData, ".");
	
	if real(encounterDataParsed[1]) == 1 {
		gameState = 130; //Combat
	}
	else if real(encounterDataParsed[1]) == 2 {
		gameState = 160; //Challenge
	}
	else if real(encounterDataParsed[1]) == 3 {
		gameState = 180; //Shrine
	}
}

//Combat
if gameState == 130 { //Setup
	
	
	
	//Calculate player stats
	playerVitalityTotal = playerVitalityBase + playerCharmBonus;
	playerEnduranceTotal = playerEnduranceBase + playerArmorBonus;
	playerAgilityTotal = playerAgilityBase + playerBootBonus;
	playerStrengthTotal = playerStrengthBase;
	playerIntelligenceTotal = playerIntelligenceBase;
	playerCompassionTotal = playerCompassionBase;
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
	
	playerMaxHealth = (2 * playerVitalityTotal) + 2;
	
	playerHealthPercentage = (playerCurrentHealth / playerMaxHealth) * 100;
	
	//Set enemy stats
	
	encounterData = encounterDatabase[currentEncounter]	
	encounterDataParsed = string_split(encounterData, ".")
	enemyType = encounterDataParsed[2]
	encounterValue = encounterDataParsed[3]
	
	
	enemyMaxHealth = enemyStatDatabase[enemyType][0]
	enemyAttack = enemyStatDatabase[enemyType][1]
	enemyDefense = enemyStatDatabase[enemyType][2]
	enemySpeed = enemyStatDatabase[enemyType][3]
	object_set_sprite(obj_enemy, enemyStatDatabase[enemyType][4])
	
	enemyCurrentHealth = enemyMaxHealth;
	
	enemyHealthPercentage = (enemyCurrentHealth / enemyMaxHealth) * 100;
	
	fightTurn1 = true;
	
	room_goto(rm_fight);
	
	gameState = 131;
}

if gameState == 131 { //Waiting for controller reset
	
	buttonLeftTextA = "Retreat";
	buttonLeftTextB = "";
	buttonLeftTextC = "";
	
	buttonMiddleTextA = "Defend";
	buttonMiddleTextB = "";
	buttonMiddleTextC = "";
	
	buttonRightTextA = "Attack";
	buttonRightTextB = "";
	buttonRightTextC = "";
	
	if (buttonLeft + buttonMiddle + buttonRight) == 0 {
		gameState = 132;
	}
	
}

if gameState == 132 { //Waiting for controller input (Player Action)
	
	if playerWaiting == false {
		alarm[2] = 600;
		playerWaiting = true;
	}
	
	if alarm[2] > 0 && divineInfluence > 0 {
		if (buttonLeft + buttonMiddle + buttonRight) > 1 {
			gameState = 131;
			playerWaiting = false;
			alarm[2] = 0;
		}
		else if (buttonLeft + buttonMiddle + buttonRight) == 1 && buttonLeft == 1 {
			gameState = 133;
			divineInfluence -= 1;
			playerWaiting = false;
			alarm[2] = 0;
			buttonLeftPressed = true;
			playerActionChoice = 1;
		}
		else if (buttonLeft + buttonMiddle + buttonRight) == 1 && buttonMiddle == 1 {
			gameState = 134;
			divineInfluence -= 1;
			playerWaiting = false;
			alarm[2] = 0;
			buttonMiddlePressed = true;
			playerActionChoice = 2;
		}
		else if (buttonLeft + buttonMiddle + buttonRight) == 1 && buttonRight == 1 {
			gameState = 135;
			divineInfluence -= 1;
			playerWaiting = false;
			alarm[2] = 0;
			buttonRightPressed = true;
			playerActionChoice = 3;
		}
	}
	
	if alarm[2] == 0 && playerWaiting == true {
		
		var randomSelection = irandom(2)+1;
		
		if randomSelection == 1 {
			gameState = 133;
			playerWaiting = false;
			buttonLeftPressed = true;
			playerActionChoice = 1;
		}
		else if randomSelection == 2 {
			gameState = 134;
			playerWaiting = false;
			buttonMiddlePressed = true;
			playerActionChoice = 2;
		}
		else if randomSelection == 3 {
			gameState = 135;
			playerWaiting = false;
			buttonRightPressed = true;
			playerActionChoice = 3;
		}
		
	}
}

if gameState == 133 { //Escape
	
	playerAgilityRoll = irandom((1+(2*playerAgilityTotal)))+1;
	enemySpeedRoll = irandom((1+(2*enemySpeed)))+1;
	
	
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
		
		alarm[1] = 90;
	
}

if gameState == 134 { //Defend
	
	
		//play guard animation
		playerGuarded = 1;
		gameState = 136
		
		
		alarm[1] = 90
	
	
}

if gameState == 135 { //Attack
	
	
	
		if playerWeaponStat == 1 {
			playerAttackRoll = irandom((1+(2*playerStrengthTotal)))+1;
		}
		else if playerWeaponStat == 2 {
			playerAttackRoll = irandom((1+(2*playerIntelligenceTotal)))+1;
		}
		else if playerWeaponStat == 3 {
			playerAttackRoll = irandom((1+(2*playerCompassionTotal)))+1;
		}
		
		enemyDefenseRoll = irandom((1+(2*enemyDefense)))+1;
	
		playerDamageValue = playerAttackRoll - enemyDefenseRoll
		if playerDamageValue < 0 {
			playerDamageValue = 0;
		}
		
		//play attack animation
		
		enemyCurrentHealth -= playerDamageValue;
		
		enemyHealthPercentage = (enemyCurrentHealth / enemyMaxHealth) * 100;
		
		if enemyCurrentHealth <= 0 {
			gameState = 151;
		}
		else {
			gameState = 136;
		}
		
		playerGuarded = 0;
		alarm[1] = 90
		
}

if gameState == 136 { //Enemy Turn
	
	if alarm[1] == 0 {
	
		enemyAttackRoll = irandom((1+(2*enemyAttack)))+1;
		playerEnduranceRoll = irandom((1+(2*playerEnduranceTotal)))+1;
		if playerWeaponStat == 1 {
			playerAttackRoll = irandom((1+(2*playerStrengthTotal)))+1;
		}
		else if playerWeaponStat == 2 {
			playerAttackRoll = irandom((1+(2*playerIntelligenceTotal)))+1;
		}
		else if playerWeaponStat == 3 {
			playerAttackRoll = irandom((1+(2*playerCompassionTotal)))+1;
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
		
		playerHealthPercentage = (playerCurrentHealth / playerMaxHealth) * 100;
		
		if playerCurrentHealth <= 0 {
			gameState = 152;
		}
		else {
			gameState = 131;
		}
		
		alarm[1] = 90;
		fightTurn1 = false;
	
	}
	
}

if gameState == 150 { //Successful Escape
	
	//Play escape animation
	if alarm[1] == 0 {
		score += 1;
		gameState = 100
		room_goto(rm_choice);
	}
}

if gameState == 151 { //Victory
	
	//Play victory animation
	
	//Check encounter reward value
	
	//Set gameState to 190 to receive rewards or 100 to move on
	
	if alarm[1] == 0 {
		score += 1;
		
		if storyActive == 1{
			if score == winTotal{
				gameState = 001;
				divineInfluence = 20;
				room_goto(rm_start);
			}
			else {
				if encounterValue == 0 {
					gameState = 100;
					room_goto(rm_choice)
				}
				else {
					gameState = 190;
				}
			}
		}
		else {
				if encounterValue == 0 {
					gameState = 100;
					room_goto(rm_choice)
				}
				else {
					gameState = 190;
				}
			}
	}
}

if gameState == 152 { //Defeat
	
	if alarm[1] == 0 {
		room_goto(rm_die);
		gameState = 153;
	}
}

if gameState == 153 { //Waiting for restart
	
	
	buttonLeftVisible = false;
	buttonMiddleVisible = false;
	buttonRightVisible = false;
	if buttonLeft + buttonMiddle + buttonRight > 0 {
		
		
		gameState = 001;
		divineInfluence = 20;
	}
}


//Attribute Challenges
if gameState == 160 { //Setup
	
	//Calculate player stats
	playerVitalityTotal = playerVitalityBase + playerCharmBonus + playerVitalityEffect;
	playerEnduranceTotal = playerEnduranceBase + playerArmorBonus + playerEnduranceEffect;
	playerAgilityTotal = playerAgilityBase + playerBootBonus + playerAgilityEffect;
	playerStrengthTotal = playerStrengthBase + playerStrengthEffect;
	playerIntelligenceTotal = playerIntelligenceBase + playerIntelligenceEffect;
	playerCompassionTotal = playerCompassionBase + playerCompassionEffect;
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
	
	playerMaxHealth = (2 * playerVitalityTotal) + 2;
	
	playerHealthPercentage = (playerCurrentHealth / playerMaxHealth) * 100;
	
	
	//Set encounter stats
	encounterData = encounterDatabase[currentEncounter]	
	encounterDataParsed = string_split(encounterData, ".")
	
	challenge1Text = encounterDataParsed[2]
	challenge1Stat = encounterDataParsed[3]
	challenge1DC = encounterDataParsed[4]
	
	challenge2Text = encounterDataParsed[5]
	challenge2Stat = encounterDataParsed[6]
	challenge2DC = encounterDataParsed[7]
	
	challenge3Text = encounterDataParsed[8]
	challenge3Stat = encounterDataParsed[9]
	challenge3DC = encounterDataParsed[10]
	
	encounterValue = encounterDataParsed[11]
	challengeRewardType = encounterDataParsed[12]
	
	challengeFailCost = encounterDataParsed[13]
	challengeFailType = encounterDataParsed[14]
	
	room_goto(rm_challenge)
	
	gameState = 161
}

if gameState == 161 { //Waiting for controller reset
	
	buttonLeftTextA = "";
	buttonLeftTextB = challenge1Text;
	buttonLeftTextC = "";
	
	buttonMiddleTextA = "";
	buttonMiddleTextB = challenge2Text;
	buttonMiddleTextC = "";
	
	buttonRightTextA = "";
	buttonRightTextB = challenge3Text;
	buttonRightTextC = "";
	
	if (buttonLeft + buttonMiddle + buttonRight) == 0 {
		gameState = 162;
	}
	
}

if gameState == 162 { //Waiting for controller input (Player Action)
	
	if playerWaiting == false {
		alarm[2] = 600;
		playerWaiting = true;
	}
	
	if alarm[2] > 0 && divineInfluence > 0 {
		if (buttonLeft + buttonMiddle + buttonRight) > 1 {
			gameState = 161;
			playerWaiting = false;
			alarm[2] = 0;
		}
		else if (buttonLeft + buttonMiddle + buttonRight) == 1 && buttonLeft == 1 {
			gameState = 163;
			divineInfluence -= 1;
			playerWaiting = false;
			alarm[2] = 0;
			buttonLeftPressed = true;
			playerActionChoice = 1;
		}
		else if (buttonLeft + buttonMiddle + buttonRight) == 1 && buttonMiddle == 1 {
			gameState = 164;
			divineInfluence -= 1;
			playerWaiting = false;
			alarm[2] = 0;
			buttonMiddlePressed = true;
			playerActionChoice = 2;
		}
		else if (buttonLeft + buttonMiddle + buttonRight) == 1 && buttonRight == 1 {
			gameState = 165;
			divineInfluence -= 1;
			playerWaiting = false;
			alarm[2] = 0;
			buttonRightPressed = true;
			playerActionChoice = 3;
		}
	}
	
	if alarm[2] == 0 && playerWaiting == true {
		
		var randomSelection = irandom(2)+1;
		
		if randomSelection == 1 {
			gameState = 163;
			playerWaiting = false;
			buttonLeftPressed = true;
			playerActionChoice = 1;
		}
		else if randomSelection == 2 {
			gameState = 164;
			playerWaiting = false;
			buttonMiddlePressed = true;
			playerActionChoice = 2;
		}
		else if randomSelection == 3 {
			gameState = 165;
			playerWaiting = false;
			buttonRightPressed = true;
			playerActionChoice = 3;
		}
		
	}
}

if gameState == 163 { //Left option selected
	if challenge1Stat == 1 { //compassion
		playerChallengeRoll = irandom((1+(2*playerCompassionTotal)))+1;
	}
	else if challenge1Stat == 2 { //intelligence
		playerChallengeRoll = irandom((1+(2*playerIntelligenceTotal)))+1;
	}
	else if challenge1Stat == 3 { //strength
		playerChallengeRoll = irandom((1+(2*playerStrengthTotal)))+1;
	}
	
	if playerChallengeRoll >= challenge1DC {
		gameState = 166
	}
	else {
		gameState = 167
	}
}

if gameState == 164 { //Middle option selected
	if challenge2Stat == 1 { //compassion
		playerChallengeRoll = irandom((1+(2*playerCompassionTotal)))+1;
	}
	else if challenge2Stat == 2 { //intelligence
		playerChallengeRoll = irandom((1+(2*playerIntelligenceTotal)))+1;
	}
	else if challenge2Stat == 3 { //strength
		playerChallengeRoll = irandom((1+(2*playerStrengthTotal)))+1;
	}
	
	if playerChallengeRoll >= challenge2DC {
		gameState = 166
	}
	else {
		gameState = 167
	}
}

if gameState == 165 { //Right option selected
	if challenge3Stat == 1 { //compassion
		playerChallengeRoll = irandom((1+(2*playerCompassionTotal)))+1;
	}
	else if challenge3Stat == 2 { //intelligence
		playerChallengeRoll = irandom((1+(2*playerIntelligenceTotal)))+1;
	}
	else if challenge3Stat == 3 { //strength
		playerChallengeRoll = irandom((1+(2*playerStrengthTotal)))+1;
	}
	
	if playerChallengeRoll >= challenge3DC {
		gameState = 166
	}
	else {
		gameState = 167
	}
}

if gameState == 166 { //Success
	
	if challengeRewardType = 1 { //item
		gameState = 190
	}
	else if challengeRewardType = 2 { //influence
		divineInfluence += rewardValue
		divineInfluence = clamp(0, 20, divineInfluence)
	}
	else if challengeRewardType = 3 { //vitality
		playerVitalityEffect += rewardValue
		playerVitalityEffect = clamp(-6, 6, playerVitalityEffect)
	}
	else if challengeRewardType = 4 { //endurance
		playerEnduranceEffect += rewardValue
		playerEnduranceEffect = clamp(-6, 6, playerEnduranceEffect)
	}
	else if challengeRewardType = 5 { //agility
		playerAgilityEffect += rewardValue
		playerAgilityEffect = clamp(-6, 6, playerAgilityEffect)
	}
	else if challengeRewardType = 6 { //strength
		playerStrengthEffect += rewardValue
		playerStrengthEffect = clamp(-6, 6, playerStrengthEffect)
	}
	else if challengeRewardType = 7 { //intelligence
		playerIntelligenceEffect += rewardValue
		playerIntelligenceEffect = clamp(-6, 6, playerIntelligenceEffect)
	}
	else if challengeRewardType = 8 { //compassion
		playerCompassionEffect += rewardValue
		playerCompassionEffect = clamp(-6, 6, playerCompassionEffect)
	}
	
}

if gameState == 167 { //Failure
	if challengeFailType = 1 { //health
		playerCurrentHealth -= challengeFailCost
	}
	else if challengeFailType = 2 { //influence
		divineInfluence -= challengeFailCost
		divineInfluence = clamp(0, 20, divineInfluence)
	}
	else if challengeFailType = 3 { //vitality
		playerVitalityEffect -= challengeFailCost
		playerVitalityEffect = clamp(-6, 6, playerVitalityEffect)
	}
	else if challengeFailType = 4 { //endurance
		playerEnduranceEffect -= challengeFailCost
		playerEnduranceEffect = clamp(-6, 6, playerEnduranceEffect)
	}
	else if challengeFailType = 5 { //agility
		playerAgilityEffect -= challengeFailCost
		playerAgilityEffect = clamp(-6, 6, playerAgilityEffect)
	}
	else if challengeFailType = 6 { //strength
		playerStrengthEffect -= challengeFailCost
		playerStrengthEffect = clamp(-6, 6, playerStrengthEffect)
	}
	else if challengeFailType = 7 { //intelligence
		playerIntelligenceEffect -= challengeFailCost
		playerIntelligenceEffect = clamp(-6, 6, playerIntelligenceEffect)
	}
	else if challengeFailType = 8 { //compassion
		playerCompassionEffect -= challengeFailCost
		playerCompassionEffect = clamp(-6, 6, playerCompassionEffect)
	}
	
	if playerCurrentHealth <= 0 {
		gameState = 152
	}
	else {
		gameState = 100
	}
}


//Rewards
if gameState == 190 { //Calculate rewards
	
	room_goto(rm_reward);
	
	itemType = irandom(5)+1; //1 = charm, 2 = armor, 3 = boots, 4 = str weapon, 5 = int weapon, 6 = comp weapon
	rewardID = (itemType*10)+encounterValue;
	//rewardID is a two-digit number; the first digit indicates the type of item, the second indicates the strength of that item's bonus
	
	//Check rewardID and display appropriate item name and stats, along with the player's currently equipped item
	
	buttonMiddleVisible = false;
	
	buttonLeftTextA = "Keep your old";
	buttonLeftTextB = "equipment";
	
	buttonRightTextA = "Claim your";
	buttonRightTextB = "new prize";
	
	gameState = 191;
}

if gameState == 191 { //Waiting for controller reset
	if buttonLeft + buttonRight == 0 {
		gameState = 192;
	}
}

if gameState == 192 { //Selection
	
	
	
	
	if playerWaiting == false {
		alarm[2] = 600;
		playerWaiting = true;
	}
	
	if alarm[2] > 0 && playerWaiting == true {
	
		if buttonLeft + buttonRight > 1 {
			gameState = 191;
		}
		else if buttonLeft + buttonRight = 1 {
			if buttonLeft = 1 {
				gameState = 193;
				divineInfluence -= 1;
				playerWaiting = false;
				alarm[2] = 0;
				
				buttonLeftPressed = true;
			}
			else if buttonRight = 1 {
				gameState = 194;
				divineInfluence -= 1;
				playerWaiting = false;
				alarm[2] = 0;
				
				buttonRightPressed = true;
			}
		}
		
	}
	
	if alarm[2] == 0 && playerWaiting == true {
		
		var randomSelection = irandom(1)+1;
		
		if randomSelection == 1 {
			gameState = 193;
			playerWaiting = false;
			buttonLeftPressed = true;
		}
		else if randomSelection == 2 {
			gameState = 194;
			playerWaiting = false;
			buttonRightPressed = true;
		}
				
	}
	
	alarm[1] = 90;
	
}

if gameState == 193 { //Leave item
	if alarm[1] == 0 {
		divineInfluence += encounterValue;
		if divineInfluence > maxInfluence {
			divineInfluence = maxInfluence;
		}
		
		playerCurrentHealth += 2*encounterValue
		if playerCurrentHealth > playerMaxHealth {
			playerCurrentHealth = playerMaxHealth;
		}
	
		gameState = 100;
		room_goto(rm_choice);
	}
}

if gameState == 194 { //Take item
	
	if alarm[1] == 0 {
	
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
	
	divineInfluence += encounterValue;
	if divineInfluence > maxInfluence {
		divineInfluence = maxInfluence;
	}
	
	playerCurrentHealth += 2*encounterValue
	if playerCurrentHealth > playerMaxHealth {
		playerCurrentHealth = playerMaxHealth;
	}
	
	gameState = 100;
	room_goto(rm_choice);
	
	}
	
}




