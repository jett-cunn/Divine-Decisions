/// @description Insert description here
// You can write your code in this editor

room_goto(rm_start);

score = 0;

gameState = 0;

buttonLeft = 0;
buttonMiddle = 0;
buttonRight = 0;

buttonLeftVisible = false;
buttonMiddleVisible = false;
buttonRightVisible = false;


buttonLeftPressed = false;
buttonMiddlePressed = false;
buttonRightPressed = false;


buttonLeftTextA = "";
buttonLeftTextB = "";
buttonLeftTextC = "";
buttonMiddleTextA = "";
buttonMiddleTextB = "";
buttonMiddleTextC = "";
buttonRightTextA = "";
buttonRightTextB = "";
buttonRightTextC = "";


encounter1 = 0;
encounter2 = 0;
encounter3 = 0;

encounterValue = 0;
encounterRoll1 = 0;
encounterRoll2 = 0;
encounterRoll3 = 0;
currentEncounter = 0;

encounterText1A = "A snivelling goblin";
encounterText1B = "hides in the shadows";
encounterText1C = "";
encounterText2A = "A snivelling goblin hides";
encounterText2B = "in the shadows, clutching";
encounterText2C = "a victim's trinket";
encounterText3A = "A ravenous wolf";
encounterText3B = "stalks its' prey";
encounterText3C = "";
encounterText4A = "A ravenous wolf stalks its'";
encounterText4B = "prey, a victim's trinket ";
encounterText4C = "dropped beyond it";
encounterText5A = "A ravenous wolf stalks its'";
encounterText5B = "prey, a fallen adventurer's";
encounterText5C = "loot in its' burrow";
encounterText6A = "A conniving cultist flees";
encounterText6B = "from battle, a victim's";
encounterText6C = "trinket on their belt";
encounterText7A = "A conniving cultist flees";
encounterText7B = "from battle, a fallen";
encounterText7C = "adventurer's prize in hand";
encounterText8A = "A conniving cultist flees";
encounterText8B = "from battle, a great";
encounterText8C = "treasure in their bag";
encounterText9A = "A notorious bandit captain";
encounterText9B = "stands ahead, a fallen";
encounterText9C = "adventurer's prize before them";
encounterText10A = "A notorious bandit captain";
encounterText10B = "stands ahead, a great";
encounterText10C = "treasure in their bag";
encounterText11A = "A notorious bandit captain";
encounterText11B = "stands ahead, wielding";
encounterText11C = "a mighty relic";

///Player Stats

//Base Stats
playerVitalityBase = 0;
playerEnduranceBase = 0;
playerAgilityBase = 0;
playerStrengthBase = 0;
playerIntelligenceBase = 0;
playerCompassionBase  = 0;

/*

//Effect Modifiers
global.playerVitalityEffect = 0;
global.playerEnduranceEffect = 0;
global.playerAgilityEffect = 0;
global.playerStrengthEffect = 0;
global.playerIntelligenceEffect = 0;
global.playerCompassionEffect = 0;

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

divineInfluence = 15;
maxInfluence = 15;
percentInfluence = 50;
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




