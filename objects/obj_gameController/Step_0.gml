///The following code comprises the game's state machine. Refer to the reference document for gameState values.

if score <= 7 {
	currentArea = 1
}
else if score <= 14 {
	currentArea = 2
}
else if score = 15 {
	currentArea = 3
}
else if score > 15 {
	currentArea = 4
}

/*
if currentArea == 1 {
	object_set_sprite(obj_worldBackground,spr_villageBackground)
}
else if currentArea == 2 {
	object_set_sprite(obj_worldBackground,spr_forestBackground)
}
else if currentArea == 3 {
	object_set_sprite(obj_worldBackground,spr_forestBackground)
}
else if currentArea > 3 {
	object_set_sprite(obj_worldBackground,spr_forestBackground)
}
*/

if gamePaused == true {
	
	//Freeze timers
	if alarm[1] > 1 {
		alarm[1] += 1
	}
	if alarm[2] > 1 {
		alarm[2] += 1
	}
	if alarm[3] > 1 {
		alarm[3] += 1
	}
	if alarm[4] > 1 {
		alarm[4] += 1
	}
	if alarm[5] > 1 {
		alarm[5] += 1
	}
	if alarm[6] > 1 {
		alarm[6] += 1
	}
	
	//Input
	if buttonLeft + buttonMiddle + buttonRight == 1 {
		if buttonLeft == 1 { //Restart Endless
			pauseMenuOption = 1
		}
		if buttonMiddle == 1 { //Restart Story
			pauseMenuOption = 2
		}
		if buttonRight == 1 { //Continue
			pauseMenuOption = 3
		}
	}
	
	if buttonLeft+buttonMiddle+buttonRight == 0 {
		if pauseMenuOption == 1 {
			gameState = 001
			divineInfluence = maxInfluence
			alarm[2] = 750
			room_goto(rm_start)
			gamePaused = false
			storyActive = false
			pauseMenuOption = 0
		}
		else if pauseMenuOption == 2 {
			gameState = 001
			divineInfluence = maxInfluence
			alarm[2] = 750
			room_goto(rm_start)
			gamePaused = false
			storyActive = true
			pauseMenuOption = 0
		}
		else if pauseMenuOption == 3 {
			room = pausedRoom
			gamePaused = false
			pauseMenuOption = 0
		} 
	}
}
else {

timerPercentage = (alarm[2] / 750) * 100


//Reset Run

if gameState == -40 {
	if buttonLeft + buttonMiddle + buttonRight < 1 {
		gameState = 000
	}
}


//Main Menu

if gameState == 000 { //Start screen
	
	
	if buttonLeft + buttonMiddle + buttonRight == 1 {
	
		if buttonLeft == 1 { // Endless Mode
			storyActive = 0;
			audio_play_sound(snd_fxStartShout,10,false)
			gameState = 001;
		}
		else if buttonMiddle == 1 { //Tutorial
			audio_play_sound(snd_fxButtonSelect,10,false)
			gameState = -12
			room_goto(rm_tutorial)
		}
		else if buttonRight == 1 { // Story Mode
			storyActive = 1;
			audio_play_sound(snd_fxStartShout,10,false)
			//if openingPlayed == false {
				gameState = -20
			//}
			//else {
			//	gameState = 001;
			//}
		}		
	}
}

//Opening Cutscene
if gameState == -20 {
	video_open("vid_StoryOpening.mp4")
	video_enable_loop(false)
	openingPlayed = true
	room_goto(rm_vid)
	if displayVideo = false {
		gameState = 001
	}
}

//Tutorial
if gameState == -12 {
	if buttonLeft + buttonRight + buttonMiddle == 0 { //Waiting for controller reset
		gameState = -1
	}
}

if gameState == -1 {
	if buttonLeft + buttonMiddle + buttonRight == 0 {
		gameState = -2
	}
}

if gameState == -2 {
	if buttonMiddle + buttonRight == 1 {
		if buttonMiddle == 1 {
			gameState = -11
		}
		else if buttonRight == 1 {
			gameState = -3
		}
	}
}

if gameState == -3 {
	if buttonLeft + buttonMiddle + buttonRight == 0 {
		gameState = -4
	}
}

if gameState == -4 {
	if buttonLeft + buttonMiddle + buttonRight == 1 {
		if buttonLeft == 1 {
			gameState += 3
		}
		else if buttonMiddle == 1 {
			gameState = -11
		}
		else if buttonRight == 1 {
			gameState -= 1
		}
	}
}

if gameState == -5 {
	if buttonLeft + buttonMiddle + buttonRight == 0 {
		gameState = -6
	}
}

if gameState == -6 {
	if buttonLeft + buttonMiddle + buttonRight == 1 {
		if buttonLeft == 1 {
			gameState += 3
		}
		else if buttonMiddle == 1 {
			gameState = -11
		}
		else if buttonRight == 1 {
			gameState -= 1
		}
	}
}

if gameState == -7 {
	if buttonLeft + buttonMiddle + buttonRight == 0 {
		gameState = -8
	}
}

if gameState == -8 {
	if buttonLeft + buttonMiddle + buttonRight == 1 {
		if buttonLeft == 1 {
			gameState += 3
		}
		else if buttonMiddle == 1 {
			gameState = -11
		}
		else if buttonRight == 1 {
			gameState -= 1
		}
	}
}

if gameState == -9 {
	if buttonLeft + buttonMiddle + buttonRight == 0 {
		gameState = -10
	}
}

if gameState == -10 {
	if buttonLeft + buttonMiddle == 1 {
		if buttonLeft == 1 {
			gameState += 3
		}
		else if buttonMiddle == 1 {
			gameState = -11
		}
	}
}

if gameState == -11 { //Waiting for controller reset
	if buttonLeft + buttonMiddle + buttonRight == 0 {
		gameState = 000
		room_goto(rm_start)
	}
}

//Character Creation
if gameState == 001 { //Waiting for controller reset
	if displayVideo == false {
		if (buttonLeft + buttonMiddle + buttonRight) == 0 {
			gameState = 002;
			if storyActive == false {
				room_goto(rm_character)
			}
		}
		fxStartShout = false
	}
}

if gameState == 002 { //Character Selection
	
	if fxStartShout == false {
		audio_play_sound(snd_fxStartShout,10,false)
		fxStartShout = true
	}
	
	score = 0;
	
	
	buttonLeftVisible = true;
	buttonMiddleVisible = true;
	buttonRightVisible = true;
	
	buttonLeftTextA = "";
	buttonLeftTextB = "Choose Mercy";
	buttonLeftTextC = "";
	buttonMiddleTextA = ""
	buttonMiddleTextB = "Choose Wisdom";
	buttonMiddleTextC = "";
	buttonRightTextA = ""
	buttonRightTextB = "Choose Valor";
	buttonRightTextC = "";
	
	
	
		
		if (buttonLeft + buttonMiddle + buttonRight) > 1 {
			gameState = 001;
		}
		else if buttonLeft == 1 { //Select Mercy
			buttonLeft = 0;
			buttonLeftPressed = true;
			alarm[4] = 60
			alarm[0] = 60;
			audio_play_sound(snd_fxSelectCompassion,10,false)
			gameState = 003;
		}
		else if buttonMiddle == 1 { //Select Wisdom
			buttonMiddle = 0;
			buttonMiddlePressed = true;
			alarm[5] = 60
			alarm[0] = 60;
			audio_play_sound(snd_fxSelectIntelligence,10,false)
			gameState = 004;
		}
		else if buttonRight == 1 { //Select Valor
			buttonRight = 0;
			buttonRightPressed = true;
			alarm[6] = 60
			alarm[0] = 60;
			audio_play_sound(snd_fxSelectStrength,10,false)
			gameState = 005;
		}
}

if gameState == 003 { //Mercy
	
	buttonMiddleVisible = false;
	
	buttonLeftTextB = "Deny"
	buttonRightTextB = "Confirm"
	
	gameState = 006;
}

if gameState == 004 { //Wisdom
	
	buttonMiddleVisible = false;
	
	buttonLeftTextB = "Deny"
	buttonRightTextB = "Confirm"
	
	gameState = 007;
}

if gameState == 005 { //Valor
	
	buttonMiddleVisible = false;
	
	buttonLeftTextB = "Deny"
	buttonRightTextB = "Confirm"
	
	gameState = 008;
}

if gameState == 006 {
	
	if buttonLeft + buttonRight > 1 {
		gameState = 003;
	}
	else if buttonLeft == 1 {
		buttonLeft = 0;
		buttonLeftPressed = true;
		alarm[4] = 60
		alarm[0] = 60;
		gameState = 002;
	}
	else if buttonRight == 1 {
		buttonRight = 0;
		buttonRightPressed = true;
		alarm[6] = 60
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
		playerEnduranceTotal = playerEnduranceBase + playerArmorBonus;
		playerAgilityTotal = playerAgilityBase + playerBootBonus;
		playerStrengthTotal = playerStrengthBase;
		playerIntelligenceTotal = playerIntelligenceBase;
		playerCompassionTotal = playerCompassionBase + playerWeaponBonus;
		playerMaxHealth = (2 * playerVitalityTotal) + 2;
		playerCurrentHealth = playerMaxHealth;
		playerName = "Mercy"
		
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
		alarm[4] = 60
		alarm[0] = 60;
		gameState = 002;
	}
	else if buttonRight == 1 {
		buttonRight = 0;
		buttonRightPressed = true;
		alarm[6] = 60
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
		playerEnduranceTotal = playerEnduranceBase + playerArmorBonus;
		playerAgilityTotal = playerAgilityBase + playerBootBonus;
		playerStrengthTotal = playerStrengthBase;
		playerIntelligenceTotal = playerIntelligenceBase + playerWeaponBonus;
		playerCompassionTotal = playerCompassionBase;
		playerMaxHealth = (2 * playerVitalityTotal) + 2;
		playerCurrentHealth = playerMaxHealth;
		playerName = "Wisdom"
		
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
		alarm[4] = 60
		alarm[0] = 60;
		gameState = 002;
	}
	else if buttonRight == 1 {
		buttonRight = 0;
		buttonRightPressed = true;
		alarm[6] = 60
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
		playerEnduranceTotal = playerEnduranceBase + playerArmorBonus;
		playerAgilityTotal = playerAgilityBase + playerBootBonus;
		playerStrengthTotal = playerStrengthBase;
		playerIntelligenceTotal = playerIntelligenceBase + playerWeaponBonus;
		playerCompassionTotal = playerCompassionBase;
		playerMaxHealth = (2 * playerVitalityTotal) + 2;
		playerCurrentHealth = playerMaxHealth;
		playerName = "Valor"
		
		gameState = 009;
	}
	
	
	
}


if gameState == 009 {
	
	//Transition to gameplay
	audio_play_sound(snd_fxStartGame,10,false)
	gameState = 100
	room_goto(rm_choice);
	alarm[2] = 750
	
}

//Gameplay

if gameState == 100 { //Waiting for controller reset
	
	//Transition to selection screen
	alarm[11] = 1
	if (buttonLeft + buttonMiddle + buttonRight) == 0 {
		gameState = 101;
	}
	playerHealthPercentage = (playerCurrentHealth / playerMaxHealth) * 100
	playerDisplayedHealth = playerCurrentHealth
}

if gameState == 101 { //Choosing encounters
	
	if currentArea == 1 {
		areaListCurrent = areaList1
	}
	else if currentArea == 2 {
		areaListCurrent = areaList2
	}
	else if currentArea == 3 {
		areaListCurrent = areaList3
	}
	else {
		areaListCurrent = areaListEndless
	}
	
	
	
	
	encounterRoll1 = areaListCurrent[irandom_range(1, array_length(areaListCurrent))-1];
	encounter1 = encounterRoll1;
	encounterRoll2 = areaListCurrent[irandom_range(1, array_length(areaListCurrent))-1];
	encounter2 = encounterRoll2;
	encounterRoll3 = areaListCurrent[irandom_range(1, array_length(areaListCurrent))-1];
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
	
	
	buttonLeftTextA = ""
	buttonLeftTextB = ""
	buttonLeftTextC = ""
	
	flavorTextLeft = encounterDataParsed[array_length(encounterDataParsed)-1]
	
	encounterData = encounterDatabase[encounter2-1]	
	encounterDataParsed = string_split(encounterData, ".")
	
	
	buttonMiddleTextA = ""
	buttonMiddleTextB = ""
	buttonMiddleTextC = ""
	
	flavorTextMiddle = encounterDataParsed[array_length(encounterDataParsed)-1]
	
	encounterData = encounterDatabase[encounter3-1]	 
	encounterDataParsed = string_split(encounterData, ".")
	
	
	buttonRightTextA = ""
	buttonRightTextB = ""
	buttonRightTextC = ""
	
	flavorTextRight = encounterDataParsed[array_length(encounterDataParsed)-1]
	
	if (buttonLeft + buttonMiddle + buttonRight) == 0 {
		gameState = 103;
	}
}

if gameState == 103 { //Selection
	
	
	if playerWaiting == false {
		alarm[2] = 750;
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
			alarm[4] = 60
		}
		else if (buttonLeft + buttonMiddle + buttonRight) == 1 && buttonMiddle == 1 {
			gameState = 105;
			divineInfluence -= 1;
			playerWaiting = false;
			alarm[2] = 0;
			buttonMiddlePressed = true;
			alarm[5] = 60
		}
		else if (buttonLeft + buttonMiddle + buttonRight) == 1 && buttonRight == 1 {
			gameState = 106;
			divineInfluence -= 1;
			playerWaiting = false;
			alarm[2] = 0;
			buttonRightPressed = true;
			alarm[6] = 60
			alarm[6] = 60
		}
		
	}
	
	if alarm[2] == 0 && playerWaiting == true {
		
		var randomSelection = irandom(2)+1;
		
		if randomSelection == 1 {
			gameState = 104;
			playerWaiting = false;
			buttonLeftPressed = true;
			alarm[4] = 60
		}
		else if randomSelection == 2 {
			gameState = 105;
			playerWaiting = false;
			buttonMiddlePressed = true;
			alarm[5] = 60
		}
		else if randomSelection == 3 {
			gameState = 106;
			playerWaiting = false;
			buttonRightPressed = true;
			alarm[6] = 60
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
	alarm[11] = 1
	
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
	enemyDisplayedHealth = enemyCurrentHealth
	enemyHealthPercentage = (enemyCurrentHealth / enemyMaxHealth) * 100;
	
	fightTurn1 = true;
	
	room_goto(rm_fight);
	
	gameState = 131;
}

if gameState == 131 { //Waiting for controller reset
	
	buttonLeftTextA = "";
	buttonLeftTextB = "Retreat";
	buttonLeftTextC = "";
	
	buttonMiddleTextA = "";
	buttonMiddleTextB = "Defend";
	buttonMiddleTextC = "";
	
	buttonRightTextA = "";
	buttonRightTextB = "Attack";
	buttonRightTextC = "";
	
	if (buttonLeft + buttonMiddle + buttonRight) == 0 {
		gameState = 132;
	}
	
}

if gameState == 132 { //Waiting for controller input (Player Action)
	
	if !fightTurn1 {
		diceSimVisible = true
	}
	
	
	if playerWaiting == false {
		alarm[2] = 750;
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
			alarm[4] = 60
			playerActionChoice = 1;
		}
		else if (buttonLeft + buttonMiddle + buttonRight) == 1 && buttonMiddle == 1 {
			gameState = 134;
			divineInfluence -= 1;
			playerWaiting = false;
			alarm[2] = 0;
			buttonMiddlePressed = true;
			alarm[5] = 60
			playerActionChoice = 2;
		}
		else if (buttonLeft + buttonMiddle + buttonRight) == 1 && buttonRight == 1 {
			gameState = 135;
			divineInfluence -= 1;
			playerWaiting = false;
			alarm[2] = 0;
			buttonRightPressed = true;
			alarm[6] = 60
			playerActionChoice = 3;
		}
	}
	
	if alarm[2] == 0 && playerWaiting == true {
		
		var randomSelection = irandom(2)+1;
		
		if randomSelection == 1 {
			gameState = 133;
			playerWaiting = false;
			buttonLeftPressed = true;
			alarm[4] = 60
			playerActionChoice = 1;
		}
		else if randomSelection == 2 {
			gameState = 134;
			playerWaiting = false;
			buttonMiddlePressed = true;
			alarm[5] = 60
			playerActionChoice = 2;
		}
		else if randomSelection == 3 {
			gameState = 135;
			playerWaiting = false;
			buttonRightPressed = true;
			alarm[6] = 60
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
		
		alarm[1] = 180;
		diceSimVisible = true
		diceSimState = 4
}

if gameState == 134 { //Defend
	
	
		//play guard animation
		playerGuarded = 1;
		gameState = 136
		
		
		alarm[1] = 180
		diceSimVisible = false
		diceSimState = 0
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
		
		if enemyCurrentHealth <= 0 {
			gameState = 151;
		}
		else {
			gameState = 136;
		}
		
		playerGuarded = 0;
		alarm[1] = 180
		diceSimVisible = true
		diceSimState = 1
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
			diceSimVisible = true
			diceSimState = 2
		}
		else if playerGuarded == 1 {
			enemyDamageRoll = enemyAttackRoll - playerEnduranceRoll - playerAttackRoll;
			diceSimVisible = true
			diceSimState = 3
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
		
		alarm[1] = 180;
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
		
		if encounterValue == 0 {
			score += 1
			
			if storyActive == 1 {
				if score > winTotal {
					gameState = 000
					divineInfluence = maxInfluence
					room_goto(rm_start)
				}
				else {
					gameState = 100 
					room_goto(rm_choice)
				}
			}
			else {
				gameState = 100 
				room_goto(rm_choice)
			}
		}
		else {
			gameState = 190
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
		
		
		gameState = -40;
		room_goto(rm_start);
		score = 0
		divineInfluence = maxInfluence;
	}
}


//Attribute Challenges
if gameState == 160 { //Setup
	
	//Calculate player stats
	alarm[11] = 1
	
	
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
	encounterValueParsed = string_split(encounterValue, "-")
	encounterValueMin = encounterValueParsed[0]
	encounterValueMax = encounterValueParsed[1]
	challengeRewardType = encounterDataParsed[12]
	
	challengeFailCost = encounterDataParsed[13]
	challengeFailCostParsed = string_split(challengeFailCost, "-")
	challengeFailCostMin = challengeFailCostParsed[0]
	challengeFailCostMax = challengeFailCostParsed[1]
	challengeFailType = encounterDataParsed[14]
	
	room_goto(rm_challenge)
	
	gameState = 161
}

if gameState == 161 { //Waiting for controller reset
	
	buttonLeftTextA = ""
	buttonLeftTextB = ""
	buttonLeftTextC = ""
	flavorTextLeft = challenge1Text
	
	buttonMiddleTextA = ""
	buttonMiddleTextB = ""
	buttonMiddleTextC = ""
	flavorTextMiddle = challenge2Text
	
	buttonRightTextA = ""
	buttonRightTextB = ""
	buttonRightTextC = ""
	flavorTextRight = challenge3Text
	
	if (buttonLeft + buttonMiddle + buttonRight) == 0 {
		gameState = 162;
	}
	
}

if gameState == 162 { //Waiting for controller input (Player Action)
	
	if playerWaiting == false {
		alarm[2] = 750;
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
			alarm[4] = 60
			playerActionChoice = 1;
		}
		else if (buttonLeft + buttonMiddle + buttonRight) == 1 && buttonMiddle == 1 {
			gameState = 164;
			divineInfluence -= 1;
			playerWaiting = false;
			alarm[2] = 0;
			buttonMiddlePressed = true;
			alarm[5] = 60
			playerActionChoice = 2;
		}
		else if (buttonLeft + buttonMiddle + buttonRight) == 1 && buttonRight == 1 {
			gameState = 165;
			divineInfluence -= 1;
			playerWaiting = false;
			alarm[2] = 0;
			buttonRightPressed = true;
			alarm[6] = 60
			playerActionChoice = 3;
		}
	}
	
	if alarm[2] == 0 && playerWaiting == true {
		
		var randomSelection = irandom(2)+1;
		
		if randomSelection == 1 {
			gameState = 163;
			playerWaiting = false;
			buttonLeftPressed = true;
			alarm[4] = 60
			playerActionChoice = 1;
		}
		else if randomSelection == 2 {
			gameState = 164;
			playerWaiting = false;
			buttonMiddlePressed = true;
			alarm[5] = 60
			playerActionChoice = 2;
		}
		else if randomSelection == 3 {
			gameState = 165;
			playerWaiting = false;
			buttonRightPressed = true;
			alarm[6] = 60
			playerActionChoice = 3;
		}
		
	}
}

if gameState == 163 { //Left option selected
	if challenge1Stat == 1 { //compassion
		playerChallengeRoll = irandom((1+(2*playerCompassionTotal)))+1;
		playerChallengeStatChosen = 1
	}
	else if challenge1Stat == 2 { //intelligence
		playerChallengeRoll = irandom((1+(2*playerIntelligenceTotal)))+1;
		playerChallengeStatChosen = 2
	}
	else if challenge1Stat == 3 { //strength
		playerChallengeRoll = irandom((1+(2*playerStrengthTotal)))+1;
		playerChallengeStatChosen = 3
	}
	
	challengeSelectedDC = challenge1DC
	
	if playerChallengeRoll >= challengeSelectedDC {
		gameState = 166
	}
	else {
		gameState = 167
	}
	
	alarm[1] = 180
	diceSimVisible = true
	diceSimState = 5
}

if gameState == 164 { //Middle option selected
	if challenge2Stat == 1 { //compassion
		playerChallengeRoll = irandom((1+(2*playerCompassionTotal)))+1;
		playerChallengeStatChosen = 1
	}
	else if challenge2Stat == 2 { //intelligence
		playerChallengeRoll = irandom((1+(2*playerIntelligenceTotal)))+1;
		playerChallengeStatChosen = 2
	}
	else if challenge2Stat == 3 { //strength
		playerChallengeRoll = irandom((1+(2*playerStrengthTotal)))+1;
		playerChallengeStatChosen = 3
	}
	
	challengeSelectedDC = challenge2DC
	
	if playerChallengeRoll >= challengeSelectedDC {
		gameState = 166
	}
	else {
		gameState = 167
	}
	
	alarm[1] = 180
	diceSimVisible = true
	diceSimState = 5
}

if gameState == 165 { //Right option selected
	if challenge3Stat == 1 { //compassion
		playerChallengeRoll = irandom((1+(2*playerCompassionTotal)))+1;
		playerChallengeStatChosen = 1
	}
	else if challenge3Stat == 2 { //intelligence
		playerChallengeRoll = irandom((1+(2*playerIntelligenceTotal)))+1;
		playerChallengeStatChosen = 2
	}
	else if challenge3Stat == 3 { //strength
		playerChallengeRoll = irandom((1+(2*playerStrengthTotal)))+1;
		playerChallengeStatChosen = 3
	}
	
	challengeSelectedDC = challenge3DC
	
	if playerChallengeRoll >= challengeSelectedDC {
		gameState = 166
	}
	else {
		gameState = 167
	}
	
	alarm[1] = 180
	diceSimVisible = true
	diceSimState = 5
}

if gameState == 166 { //Success
	
	if alarm[1] == 0 {
		
		if challengeRewardType = 1 { //item
			gameState = 190
		}
		else if challengeRewardType = 2 { //health
			playerCurrentHealth += irandom_range(encounterValueMin,encounterValueMax)
			playerCurrentHealth = clamp(0, playerMaxHealth, playerCurrentHealth)
		}
		else if challengeRewardType = 3 { //influence
			divineInfluence += irandom_range(encounterValueMin,encounterValueMax)
			divineInfluence = clamp(divineInfluence, 0, maxInfluence)
		}
		else if challengeRewardType = 4 { //vitality
			playerVitalityEffect += irandom_range(encounterValueMin,encounterValueMax)
			playerVitalityEffect = clamp(-6, 6, playerVitalityEffect)
		}
		else if challengeRewardType = 5 { //endurance
			playerEnduranceEffect += irandom_range(encounterValueMin,encounterValueMax)
			playerEnduranceEffect = clamp(-6, 6, playerEnduranceEffect)
		}
		else if challengeRewardType = 6 { //agility
			playerAgilityEffect += irandom_range(encounterValueMin,encounterValueMax)
			playerAgilityEffect = clamp(-6, 6, playerAgilityEffect)
		}
		else if challengeRewardType = 7 { //strength
			playerStrengthEffect += irandom_range(encounterValueMin,encounterValueMax)
			playerStrengthEffect = clamp(-6, 6, playerStrengthEffect)
		}
		else if challengeRewardType = 8 { //intelligence
			playerIntelligenceEffect += irandom_range(encounterValueMin,encounterValueMax)
			playerIntelligenceEffect = clamp(-6, 6, playerIntelligenceEffect)
		}
		else if challengeRewardType = 9 { //compassion
			playerCompassionEffect += irandom_range(encounterValueMin,encounterValueMax)
			playerCompassionEffect = clamp(-6, 6, playerCompassionEffect)
		}
		
		score += 1;
		
		if storyActive == 1{
			if score > winTotal{
				gameState = 001;
				divineInfluence = maxInfluence;
				room_goto(rm_start);
			}
			else {
				gameState = 100
				room_goto(rm_choice)
			}
		}
		else {
			gameState = 100
			room_goto(rm_choice)
		}
	
	}
	
}

if gameState == 167 { //Failure
	
	if alarm[1] == 0 {
		
		if challengeFailType = 1 { //health
			playerCurrentHealth -= irandom_range(challengeFailCostMin,challengeFailCostMax)
			
			if playerCurrentHealth <= 0 {
				gameState = 153
				room_goto(rm_die)
			}
		}
		else if challengeFailType = 2 { //influence
			divineInfluence -= irandom_range(challengeFailCostMin,challengeFailCostMax)
			divineInfluence = clamp(divineInfluence, 0, maxInfluence)
		}
		else if challengeFailType = 3 { //vitality
			playerVitalityEffect -= irandom_range(challengeFailCostMin,challengeFailCostMax)
			playerVitalityEffect = clamp(-6, 6, playerVitalityEffect)
		}
		else if challengeFailType = 4 { //endurance
			playerEnduranceEffect -= irandom_range(challengeFailCostMin,challengeFailCostMax)
			playerEnduranceEffect = clamp(-6, 6, playerEnduranceEffect)
		}
		else if challengeFailType = 5 { //agility
			playerAgilityEffect -= irandom_range(challengeFailCostMin,challengeFailCostMax)
			playerAgilityEffect = clamp(-6, 6, playerAgilityEffect)
		}
		else if challengeFailType = 6 { //strength
			playerStrengthEffect -= irandom_range(challengeFailCostMin,challengeFailCostMax)
			playerStrengthEffect = clamp(-6, 6, playerStrengthEffect)
		}
		else if challengeFailType = 7 { //intelligence
			playerIntelligenceEffect -= irandom_range(challengeFailCostMin,challengeFailCostMax)
			playerIntelligenceEffect = clamp(-6, 6, playerIntelligenceEffect)
		}
		else if challengeFailType = 8 { //compassion
			playerCompassionEffect -= irandom_range(challengeFailCostMin,challengeFailCostMax)
			playerCompassionEffect = clamp(-6, 6, playerCompassionEffect)
		}
		
		if playerCurrentHealth <= 0 {
			gameState = 152
		}
		else {
			score += 1;
		
			if storyActive == 1{
				if score > winTotal{
					gameState = 001;
					divineInfluence = maxInfluence;
					room_goto(rm_start);
				}
				else {
					gameState = 100
					room_goto(rm_choice)
				}
			}
			else {
				gameState = 100
				room_goto(rm_choice)
			}
		}
		
	}
}

if gameState == 180 { //Shrine Setup
	
	alarm[11] = 1
	
	//Pull encounter data
	encounterData = encounterDatabase[currentEncounter]	
	encounterDataParsed = string_split(encounterData, ".")
	
	encounterValue = real(encounterDataParsed[2])
	
	rewardListCurrent = rewardListMaster
	
	rewardListCurrent = array_shuffle(rewardListCurrent)
	reward1 = array_pop(rewardListCurrent)
	reward2 = array_pop(rewardListCurrent)
	reward3 = array_pop(rewardListCurrent)
	
	buttonLeftTextA = ""
	buttonLeftTextC = ""
	buttonMiddleTextA = ""
	buttonMiddleTextC = ""
	buttonRightTextA = ""
	buttonRightTextC = ""
	
	rewardValueBuffer = reward1
	if rewardValueBuffer == 1 {
		rewardTextBuffer = "Gain " + string(encounterValue*5) + " Health"
	}
	else if rewardValueBuffer == 2 {
		rewardTextBuffer = "Gain " + string(encounterValue*3) + " Influence"
	}
	else if rewardValueBuffer == 3 {
		rewardTextBuffer = "Gain " + string(encounterValue) + " Vitality"
	}
	else if rewardValueBuffer == 4 {
		rewardTextBuffer = "Gain " + string(encounterValue) + " Endurance"
	}
	else if rewardValueBuffer == 5 {
		rewardTextBuffer = "Gain " + string(encounterValue) + " Agility"
	}
	else if rewardValueBuffer == 6 {
		rewardTextBuffer = "Gain " + string(encounterValue) + " Strength"
	}
	else if rewardValueBuffer == 7 {
		rewardTextBuffer = "Gain " + string(encounterValue) + " Intelligence"
	}
	else if rewardValueBuffer == 8 {
		rewardTextBuffer = "Gain " + string(encounterValue) + " Compassion"
	}
	buttonLeftTextB = rewardTextBuffer
	
	rewardValueBuffer = reward2
	if rewardValueBuffer == 1 {
		rewardTextBuffer = "Gain " + string(encounterValue*5) + " Health"
	}
	else if rewardValueBuffer == 2 {
		rewardTextBuffer = "Gain " + string(encounterValue*3) + " Influence"
	}
	else if rewardValueBuffer == 3 {
		rewardTextBuffer = "Gain " + string(encounterValue) + " Vitality"
	}
	else if rewardValueBuffer == 4 {
		rewardTextBuffer = "Gain " + string(encounterValue) + " Endurance"
	}
	else if rewardValueBuffer == 5 {
		rewardTextBuffer = "Gain " + string(encounterValue) + " Agility"
	}
	else if rewardValueBuffer == 6 {
		rewardTextBuffer = "Gain " + string(encounterValue) + " Strength"
	}
	else if rewardValueBuffer == 7 {
		rewardTextBuffer = "Gain " + string(encounterValue) + " Intelligence"
	}
	else if rewardValueBuffer == 8 {
		rewardTextBuffer = "Gain " + string(encounterValue) + " Compassion"
	}
	buttonMiddleTextB = rewardTextBuffer
	
	rewardValueBuffer = reward3
	if rewardValueBuffer == 1 {
		rewardTextBuffer = "Gain " + string(encounterValue*5) + " Health"
	}
	else if rewardValueBuffer == 2 {
		rewardTextBuffer = "Gain " + string(encounterValue*3) + " Influence"
	}
	else if rewardValueBuffer == 3 {
		rewardTextBuffer = "Gain " + string(encounterValue) + " Vitality"
	}
	else if rewardValueBuffer == 4 {
		rewardTextBuffer = "Gain " + string(encounterValue) + " Endurance"
	}
	else if rewardValueBuffer == 5 {
		rewardTextBuffer = "Gain " + string(encounterValue) + " Agility"
	}
	else if rewardValueBuffer == 6 {
		rewardTextBuffer = "Gain " + string(encounterValue) + " Strength"
	}
	else if rewardValueBuffer == 7 {
		rewardTextBuffer = "Gain " + string(encounterValue) + " Intelligence"
	}
	else if rewardValueBuffer == 8 {
		rewardTextBuffer = "Gain " + string(encounterValue) + " Compassion"
	}
	buttonRightTextB = rewardTextBuffer
	
	room_goto(rm_shrine)
	
	gameState = 181
}

if gameState == 181 { //Waiting for controller reset
	
	if (buttonLeft + buttonMiddle + buttonRight) == 0 {
		gameState = 182;
	}
	
}

if gameState == 182 { //Controller reset, waiting for player input
	if playerWaiting == false {
		alarm[2] = 750;
		playerWaiting = true;
	}
	
	if alarm[2] > 0 && divineInfluence > 0 {
		if (buttonLeft + buttonMiddle + buttonRight) > 1 {
			gameState = 181;
			playerWaiting = false;
			alarm[2] = 0;
		}
		else if (buttonLeft + buttonMiddle + buttonRight) == 1 && buttonLeft == 1 {
			gameState = 183;
			divineInfluence -= 1;
			playerWaiting = false;
			alarm[2] = 0;
			buttonLeftPressed = true;
			alarm[4] = 60
			playerActionChoice = 1;
		}
		else if (buttonLeft + buttonMiddle + buttonRight) == 1 && buttonMiddle == 1 {
			gameState = 184;
			divineInfluence -= 1;
			playerWaiting = false;
			alarm[2] = 0;
			buttonMiddlePressed = true;
			alarm[5] = 60
			playerActionChoice = 2;
		}
		else if (buttonLeft + buttonMiddle + buttonRight) == 1 && buttonRight == 1 {
			gameState = 185;
			divineInfluence -= 1;
			playerWaiting = false;
			alarm[2] = 0;
			buttonRightPressed = true;
			alarm[6] = 60
			playerActionChoice = 3;
		}
	}
	
	if alarm[2] == 0 && playerWaiting == true {
		
		var randomSelection = irandom(2)+1;
		
		if randomSelection == 1 {
			gameState = 183;
			playerWaiting = false;
			buttonLeftPressed = true;
			alarm[4] = 60
			playerActionChoice = 1;
		}
		else if randomSelection == 2 {
			gameState = 184;
			playerWaiting = false;
			buttonMiddlePressed = true;
			alarm[5] = 60
			playerActionChoice = 2;
		}
		else if randomSelection == 3 {
			gameState = 185;
			playerWaiting = false;
			buttonRightPressed = true;
			alarm[6] = 60
			playerActionChoice = 3;
		}
		
	}
}

if gameState == 183 { //Left prize selected
	if reward1 == 1 {
		playerCurrentHealth += encounterValue*5
		playerCurrentHealth = clamp(playerCurrentHealth, 0, playerMaxHealth)
		playerHealthPercentage = (playerCurrentHealth / playerMaxHealth) * 100
	}
	else if reward1 == 2 {
		divineInfluence += encounterValue*3 + 1
		divineInfluence = clamp(divineInfluence, 0, maxInfluence)
	}
	else if reward1 == 3 {
		playerVitalityEffect += encounterValue
		playerVitailtyEffect = clamp(playerVitalityEffect, -6, 6)
	}
	else if reward1 == 4 {
		playerEnduranceEffect += encounterValue
		playerEnduranceEffect = clamp(playerEnduranceEffect, -6, 6)
	}
	else if reward1 == 5 {
		playerAgilityEffect += encounterValue
		playerAgilityEffect = clamp(playerAgilityEffect, -6, 6)
	}
	else if reward1 == 6 {
		playerStrengthEffect += encounterValue
		playerStrengthEffect = clamp(playerStrengthEffect, -6, 6)
	}
	else if reward1 == 7 {
		playerIntelligenceEffect += encounterValue
		playerIntelligenceEffect = clamp(playerIntelligenceEffect, -6, 6)
	}
	else if reward1 == 8 {
		playerCompassionEffect += encounterValue
		playerCompassionEffect = clamp(playerCompassionEffect, -6, 6)
	}
	alarm[1] = 180
	gameState = 186
}

if gameState == 184 { //Middle prize selected
	if reward2 == 1 {
		playerCurrentHealth += encounterValue*5
		playerCurrentHealth = clamp(playerCurrentHealth, 0, playerMaxHealth)
		playerHealthPercentage = (playerCurrentHealth / playerMaxHealth) * 100
	}
	else if reward2 == 2 {
		divineInfluence += encounterValue*3 + 1
		divineInfluence = clamp(divineInfluence, 0, maxInfluence)
	}
	else if reward2 == 3 {
		playerVitalityEffect += encounterValue
		playerVitailtyEffect = clamp(playerVitalityEffect, -6, 6)
	}
	else if reward2 == 4 {
		playerEnduranceEffect += encounterValue
		playerEnduranceEffect = clamp(playerEnduranceEffect, -6, 6)
	}
	else if reward2 == 5 {
		playerAgilityEffect += encounterValue
		playerAgilityEffect = clamp(playerAgilityEffect, -6, 6)
	}
	else if reward2 == 6 {
		playerStrengthEffect += encounterValue
		playerStrengthEffect = clamp(playerStrengthEffect, -6, 6)
	}
	else if reward2 == 7 {
		playerIntelligenceEffect += encounterValue
		playerIntelligenceEffect = clamp(playerIntelligenceEffect, -6, 6)
	}
	else if reward2 == 8 {
		playerCompassionEffect += encounterValue
		playerCompassionEffect = clamp(playerCompassionEffect, -6, 6)
	}
	alarm[1] = 180
	gameState = 186
}

if gameState == 185 { //Right prize selected
	if reward3 == 1 {
		playerCurrentHealth += encounterValue*5
		playerCurrentHealth = clamp(playerCurrentHealth, 0, playerMaxHealth)
		playerHealthPercentage = (playerCurrentHealth / playerMaxHealth) * 100
	}
	else if reward3 == 2 {
		divineInfluence += encounterValue*3 + 1
		divineInfluence = clamp(divineInfluence, 0, maxInfluence)
	}
	else if reward3 == 3 {
		playerVitalityEffect += encounterValue
		playerVitailtyEffect = clamp(playerVitalityEffect, -6, 6)
	}
	else if reward3 == 4 {
		playerEnduranceEffect += encounterValue
		playerEnduranceEffect = clamp(playerEnduranceEffect, -6, 6)
	}
	else if reward3 == 5 {
		playerAgilityEffect += encounterValue
		playerAgilityEffect = clamp(playerAgilityEffect, -6, 6)
	}
	else if reward3 == 6 {
		playerStrengthEffect += encounterValue
		playerStrengthEffect = clamp(playerStrengthEffect, -6, 6)
	}
	else if reward3 == 7 {
		playerIntelligenceEffect += encounterValue
		playerIntelligenceEffect = clamp(playerIntelligenceEffect, -6, 6)
	}
	else if reward3 == 8 {
		playerCompassionEffect += encounterValue
		playerCompassionEffect = clamp(playerCompassionEffect, -6, 6)
	}
	alarm[1] = 180
	gameState = 186
}

if gameState == 186 { //Return to selection
	if alarm[1] == 0 {
		score += 1;
		
		if storyActive == 1{
			if score > winTotal{
				gameState = 001;
				divineInfluence = maxInfluence;
				room_goto(rm_start);
			}
			else {
				gameState = 100
				room_goto(rm_choice)
			}
		}
		else {
			gameState = 100
			room_goto(rm_choice)
		}
	
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
	
	buttonLeftTextA = "";
	buttonLeftTextB = "keep old gear";
	buttonLeftTextC = "";
	
	buttonRightTextA = "";
	buttonRightTextB = "take new item";
	buttonRightTextC = "";
	
	gameState = 191;
}

if gameState == 191 { //Waiting for controller reset
	if buttonLeft + buttonRight == 0 {
		gameState = 192;
	}
}

if gameState == 192 { //Selection
	
	
	
	
	if playerWaiting == false {
		alarm[2] = 750;
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
				alarm[4] = 60
			}
			else if buttonRight = 1 {
				gameState = 194;
				divineInfluence -= 1;
				playerWaiting = false;
				alarm[2] = 0;
				
				buttonRightPressed = true;
				alarm[6] = 60
			}
		}
		
	}
	
	if alarm[2] == 0 && playerWaiting == true {
		
		var randomSelection = irandom(1)+1;
		
		if randomSelection == 1 {
			gameState = 193;
			playerWaiting = false;
			buttonLeftPressed = true;
			alarm[4] = 60
		}
		else if randomSelection == 2 {
			gameState = 194;
			playerWaiting = false;
			buttonRightPressed = true;
			alarm[6] = 60
		}
				
	}
	
	alarm[1] = 180;
	
}

if gameState == 193 { //Leave item
	if alarm[1] == 0 {
		
		/*
		divineInfluence += encounterValue;
		if divineInfluence > maxInfluence {
			divineInfluence = maxInfluence;
		}
		
		playerCurrentHealth += 2*encounterValue
		if playerCurrentHealth > playerMaxHealth {
			playerCurrentHealth = playerMaxHealth;
		}
		*/
	
		score += 1;
		
		if storyActive == 1{
			if score > winTotal{
				gameState = 001;
				divineInfluence = maxInfluence;
				room_goto(rm_start);
			}
			else {
				gameState = 100
				room_goto(rm_choice)
			}
		}
		else {
			gameState = 100
			room_goto(rm_choice)
		}
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
	/*
	divineInfluence += encounterValue;
	if divineInfluence > maxInfluence {
		divineInfluence = maxInfluence;
	}
	
	playerCurrentHealth += 2*encounterValue
	if playerCurrentHealth > playerMaxHealth {
		playerCurrentHealth = playerMaxHealth;
	}
	*/
	score += 1;
		
		if storyActive == 1{
			if score > winTotal{
				gameState = 001;
				divineInfluence = maxInfluence;
				room_goto(rm_start);
			}
			else {
				gameState = 100
				room_goto(rm_choice)
			}
		}
		else {
			gameState = 100
			room_goto(rm_choice)
		}
	
	}
	
}




}