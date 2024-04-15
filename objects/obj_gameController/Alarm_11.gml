/// @description Insert description here
// You can write your code in this editor

playerVitalityTotal = playerVitalityBase + playerCharmBonus + playerVitalityEffect;
playerEnduranceTotal = playerEnduranceBase + playerArmorBonus + playerEnduranceEffect;
playerAgilityTotal = playerAgilityBase + playerBootBonus + playerAgilityEffect;
playerStrengthTotal = playerStrengthBase + playerStrengthEffect;
playerIntelligenceTotal = playerIntelligenceBase + playerIntelligenceEffect;
playerCompassionTotal = playerCompassionBase + playerCompassionEffect;
if playerWeaponStat == 1 {
	playerStrengthTotal += playerWeaponBonus;
}
if playerWeaponStat == 2 {
	playerIntelligenceTotal += playerWeaponBonus;
}
if playerWeaponStat == 3 {
	playerCompassionTotal += playerWeaponBonus;
}
playerMaxHealth = (2*playerVitalityTotal)+2
playerHealthPercentage = (playerCurrentHealth/playerMaxHealth)*100




