/// @description Insert description here
// You can write your code in this editor

if room == rm_character {
	buttonBar = true
	button1 = true
	button2 = true
	button3 = true
	influence = true
	timer = true
	progressBar = true
	playerHealth = false
	enemyHealth = false
	text1 = false
	text2 = false
	text3 = false
	enemy = false
	player = false
	inventory = false
	dicePanel = false
	die1 = false
	die2 = false
	die3 = false
}
else if room == rm_choice {
	buttonBar = true
	button1 = true
	button2 = true
	button3 = true
	influence = true
	timer = true
	progressBar = true
	playerHealth = false
	enemyHealth = false
	text1 = true
	text2 = true
	text3 = true
	enemy = false
	player = false
	inventory = false
	dicePanel = false
	die1 = false
	die2 = false
	die3 = false
}
else if room == rm_fight {
	buttonBar = true
	button1 = true
	button2 = true
	button3 = true
	influence = true
	timer = true
	progressBar = true
	playerHealth = true
	enemyHealth = true
	text1 = false
	text2 = false
	text3 = false
	enemy = true
	player = true
	inventory = false
	dicePanel = true
	die1 = true
	die2 = true
	die3 = true
}
else if room == rm_challenge {
	buttonBar = true
	button1 = true
	button2 = true
	button3 = true
	influence = true
	timer = true
	progressBar = true
	playerHealth = true
	enemyHealth = false
	text1 = true
	text2 = true
	text3 = true
	enemy = false
	player = false
	inventory = true
	dicePanel = false
	die1 = false
	die2 = false
	die3 = false
}
else if room == rm_shrine {
	buttonBar = true
	button1 = true
	button2 = true
	button3 = true
	influence = true
	timer = true
	progressBar = true
	playerHealth = false
	enemyHealth = false
	text1 = true
	text2 = true
	text3 = true
	enemy = false
	player = false
	inventory = true
	dicePanel = true
	die1 = true
	die2 = true
	die3 = true
}
else if room == rm_reward {
	buttonBar = true
	button1 = true
	button2 = true
	button3 = true
	influence = true
	timer = true
	progressBar = true
	playerHealth = false
	enemyHealth = false
	text1 = false
	text2 = false
	text3 = false
	enemy = false
	player = false
	inventory = true
	dicePanel = true
	die1 = true
	die2 = true
	die3 = true
}