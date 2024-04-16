/// @description Insert description here
// You can write your code in this editor

if currentRoom == rm_fight {
	visible = true
}
else {
	visible = false
}

if currentRoom == rm_fight {
	if lastRoom == rm_choice {
		fightFrameCounter = 0
	}
	else if lastRoom == rm_pause {
		fightFrameCounter = 120
	}
	fightFrameCounter += 1
	
	fightAnimPercent = clamp(((fightFrameCounter/120)),0,1)
	
	if obj_gameController.currentArea == 1 {
		enemyCurrentX = lerp(enemyStartX,enemyVillageX,fightAnimPercent)
		enemyCurrentY = lerp(enemyStartY,enemyVillageY,fightAnimPercent)
	}
	else if obj_gameController.currentArea > 1 {
		enemyCurrentX = lerp(enemyStartX,enemyForestX,fightAnimPercent)
		enemyCurrentY = lerp(enemyStartY,enemyForestY,fightAnimPercent)
	}
	
	x = enemyCurrentX
	y = enemyCurrentY
	
}



