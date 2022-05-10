/// @description Insert description here
// You can write your code in this editor

//inicial position

ipx = 104;
ipy = 104;

obj_Player.x = ipx;
obj_Player.y = ipy;

onGround = true;
groundY = y;

//Maximum speed
spd = 72;

//set attack state
lastDirection = "none";

//set life
maxLife = 100;
actualLife = maxLife;
isHit = false;

stun_time = 1; //time till the player can be hurted again

//health bar
healthbar_width = 150;
healthbar_heigth = 18;

healthbar_x = 35;
healthbar_y = 35;

//attack Cooldown

attackCD = 0.25;
attackDMG = 10;
target = noone;
canAttack = true;
attackSpeed = 30;
attackRange = 70;








