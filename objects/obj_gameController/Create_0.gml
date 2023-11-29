/// @description Insert description here
// You can write your code in this editor
randomize();

gameState = 0;

buttonLeft = 0;
buttonMiddle = 0;
buttonRight = 0;

buttonLeftVisible = false;
buttonMiddleVisible = false;
buttonRightVisible = false;

buttonLeftTextA = "";
buttonLeftTextB = "";
buttonMiddleTextA = "";
buttonMiddleTextB = "";
buttonRightTextA = "";
buttonRightTextB = "";


encounter1 = 0;
encounter2 = 0;
encounter3 = 0;

encounterValue = 0;
encounterRoll1 = 0;
encounterRoll2 = 0;
encounterRoll3 = 0;
currentEncounter = 0;

encounterText1A = "A snivelling goblin hides in the shadows";
encounterText1B = "";
encounterText2A = "A snivelling goblin hides in the shadows,";
encounterText2B = "clutching a victim's trinket";
encounterText3A = "A ravenous wolf stalks its' prey";
encounterText3B = "";
encounterText4A = "A ravenous wolf stalks its' prey,";
encounterText4B = "a victim's trinket dropped beyond it";
encounterText5A = "A ravenous wolf stalks its' prey,";
encounterText5B = "a fallen adventurer's loot in its' burrow";
encounterText6A = "A conniving cultist flees from battle,";
encounterText6B = "a victim's trinket on their belt";
encounterText7A = "A conniving cultist flees from battle,";
encounterText7B = "a fallen adventurer's prize in hand";
encounterText8A = "A conniving cultist flees from battle,";
encounterText8B = "a great treasure in their bag";
encounterText9A = "A notorious bandit captain stands ahead,";
encounterText9B = "a fallen adventurer's prize before them";
encounterText10A = "A notorious bandit captain stands ahead,";
encounterText10B = "a great treasure in their bag";
encounterText11A = "A notorious bandit captain stands ahead,";
encounterText11B = "a mighty relic in their sack";

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
divineInfluence = 0;
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



