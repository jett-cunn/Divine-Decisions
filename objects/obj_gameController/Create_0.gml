/// @description Insert description here
// You can write your code in this editor
randomize();
window_set_fullscreen(true);

score = 0;

gameState = 0;

storyActive = 0;

winTotal = 15;

buttonLeft = 0;
buttonMiddle = 0;
buttonRight = 0;

buttonLeftVisible = false;
buttonMiddleVisible = false;
buttonRightVisible = false;


buttonLeftPressed = false;
buttonMiddlePressed = false;
buttonRightPressed = false;


inventoryVisible = true;

timerPercentage = 0;

gamePaused = false
pausedRoom = rm_start
pauseMenuOption = 0

buttonLeftTextA = "";
buttonLeftTextB = "";
buttonLeftTextC = "";
buttonMiddleTextA = "";
buttonMiddleTextB = "";
buttonMiddleTextC = "";
buttonRightTextA = "";
buttonRightTextB = "";
buttonRightTextC = "";
flavorTextLeft = "";
flavorTextMiddle = "";
flavorTextRight = "";


encounter1 = 0;
encounter2 = 0;
encounter3 = 0;

encounterValue = 0;
encounterRoll1 = 0;
encounterRoll2 = 0;
encounterRoll3 = 0;
currentEncounter = 0;



///Player Stats

//Base Stats
playerName = ""

playerVitalityBase = 0;
playerEnduranceBase = 0;
playerAgilityBase = 0;
playerStrengthBase = 0;
playerIntelligenceBase = 0;
playerCompassionBase  = 0;



//Effect Modifiers
playerVitalityEffect = 0;
playerEnduranceEffect = 0;
playerAgilityEffect = 0;
playerStrengthEffect = 0;
playerIntelligenceEffect = 0;
playerCompassionEffect = 0;

/*
//Boon/Bane Modifiers
global.playerVitalityBoon = 0;
global.playerEnduranceBoon = 0;
global.playerAgilityBoon = 0;
global.playerStrengthBoon = 0;
global.playerIntelligenceBoon = 0;
global.playerCompassionBoon = 0;

*/

//Equipped Items
playerWeaponBonus = 0;
playerWeaponStat = 0; //1 -> Str, 2 -> Int, 3 -> Comp
playerCharmBonus = 0;
playerArmorBonus = 0;
playerBootBonus = 0;

//Modified Stats
playerVitalityTotal = 0;
playerEnduranceTotal = 0;
playerAgilityTotal = 0;
playerStrengthTotal = 0;
playerIntelligenceTotal = 0;
playerCompassionTotal = 0;

//Changing Values
playerMaxHealth = 0;
playerCurrentHealth = 0;
playerHealthPercentage = 0;

playerActionChoice = 0;
fightTurn1 = false;

divineInfluence = 16;
maxInfluence = 16;
percentInfluence = 100;
playerWaiting = false;

rewardID = 0;

playerEnduranceRoll = 0;
playerAgilityRoll = 0;
playerStrengthRoll = 0;
playerIntelligenceRoll = 0;
playerCompassionRoll = 0;

playerAttackRoll = 0;
playerDamageValue = 0;

playerGuarded = 0;

diceSimVisible = false
diceSimState = 0


///Enemy Stats

enemyMaxHealth = 0;
enemyAttack = 0;
enemyDefense = 0;
enemySpeed = 0;

enemyCurrentHealth = 0;
enemyHealthPercentage = 0;

enemyAttackRoll = 0;
enemyDefenseRoll = 0;
enemySpeedRoll = 0;

enemyDamageRoll = 0;
enemyType = 0; //1 = goblin, 2 = wolf, 3 = cultist, 4 = bandit

enemyStatDatabase = [ //HP, Attack, Defense, Speed, Sprite
	[0], //Null
	[4, 1, 1, 1, spr_enemyCitizen], //Citizen (ID 1)
	[6, 2, 1, 3, spr_enemyGoblin], //Goblin (ID 2)
	[8, 3, 2, 4, spr_enemyWolf], //Wolf (ID 3)
	[10, 4, 3, 2, spr_enemyBandit], //Bandit (ID 4)
	[12, 2, 4, 3, spr_enemyCultist], //Cultist (ID 5)
	[14, 5, 4, 3, spr_enemyBanditCaptain], //Bandit Captain (ID 6)
	[25, 7, 5, 6, spr_enemyDragon] //Dragon (ID 7)
];


//Challenge Stats
challenge1Text = ""
challenge2Text = ""
challenge3Text = ""
challenge1Stat = 0
challenge2Stat = 0
challenge3Stat = 0
challenge1DC = 0
challenge2DC = 0
challenge3DC = 0
challengeRewardType = 0
encounterValueParsed = []
encounterValueMin = 0
encounterValueMax = 0

challengeFailCost = 0
challengeFailCostParsed = []
challengeFailCostMin = 0
challengeFailCostMax = 0
challengeFailType = 0

playerChallengeStatChosen = 0 //3 = Strength, 2 = Intelligence, 1 = Compassion
playerChallengeRoll = 0
challengeSelectedDC = 0


//Shrine Stats
reward1 = 0
reward2 = 0
reward3 = 0
rewardListMaster = [1,2,3,4,5,6,7,8,1,2,3,4,5,6,7,8]
rewardListCurrent = []
rewardTextBuffer = 0
rewardValueBuffer = 0
rewardType = 0


areaList1 = [1,2,3,4,5,6,7,8,9,9,10,11,12,12,13,14,15,15,16]
areaList2 = [20,21,22,23,24,25,26,27,27,28,28,29,29,30,30,30,31]
areaList3 = [34]
areaListEndless = [22,23,24,25,26,28,29,31,34]
areaListCurrent = []

currentArea = 1

encounterData = ""
encounterDataParsed = []
encounterDatabase = []
encounterDatabaseLine = 0

database = file_text_open_read("encounterDatabase.txt")	
if (file_exists("encounterDatabase.txt")){
	
	while(!file_text_eof(database)){ //Until we reach the end of the file...
		encounterDatabase[encounterDatabaseLine] = file_text_read_string(database) //Store the file in this array and move on
		file_text_readln(database)
		encounterDatabaseLine += 1
	}
	file_text_close(database)
}



//Sound Control Variables
fxStartShout = false
