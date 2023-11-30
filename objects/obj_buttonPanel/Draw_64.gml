/// @description Insert description here
// You can write your code in this editor


draw_set_halign(fa_left);
draw_set_font(fnt_gothicLarge);
draw_set_color(c_yellow);

draw_text(1275,650,string(obj_gameController.divineInfluence) + " / " + string(obj_gameController.maxInfluence) + " Influence");

obj_gameController.percentInfluence = (obj_gameController.divineInfluence / obj_gameController.maxInfluence) * 100

draw_healthbar(1275,690,1655,720,obj_gameController.percentInfluence,c_olive,c_yellow,c_yellow,1,true,true);

var timerPercent = (obj_gameController.alarm[2] / 900) * 100;

draw_healthbar(750,675,1250,750,timerPercent,c_black,c_red,c_green,1,false,false);

