/// @description Insert description here
// You can write your code in this editor

//inicial position

#macro LayerSize = 35;

ipx = 0;
ipy = 0;

obj_Player.x = ipx;
obj_Player.y = ipy;

onGround = true;
groundY = y;

//Maximum speed
spd = 72;
xspd = 0;
yspd = 0;
spdMod = 1;

//create colision box 72x72

//set attack state
isAttacking = false;
attackType = 0;

//set life
maxLife = 100;
actualLife = maxLife;
isHit = false;

stun_time = 1; //time till the player can be hurted again

healthbar_width = 150;
healthbar_heigth = 18;

healthbar_x = 35;
healthbar_y = 35;







