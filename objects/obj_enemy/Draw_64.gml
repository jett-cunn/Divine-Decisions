/// @description Insert description here
// You can write your code in this editor

if obj_gameController.enemyType == 1 {
	object_set_sprite(obj_enemy,spr_enemyGoblin);
}
else if obj_gameController.enemyType == 2 {
	object_set_sprite(obj_enemy,spr_enemyWolf);
}
else if obj_gameController.enemyType == 3 {
	object_set_sprite(obj_enemy,spr_enemyCultist);
}
else if obj_gameController.enemyType == 4 {
	object_set_sprite(obj_enemy,spr_enemyBandit);
}
else {
	object_set_sprite(obj_enemy,spr_player);
}




