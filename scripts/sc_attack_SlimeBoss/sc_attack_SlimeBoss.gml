// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sc_attack_SlimeBoss(){

		if (Life >= 70){
			estado_slime_boss = atack1
		} else {
		 estado_slime_boss = atack2
		}
	
	}

function atack1() {
	for(var i = -72; i <=72; i+=72)
		for(var j = -72; j <=72; j+=72)
			if place_meeting(x+i,y+j,obj_Boss) and receiveDamage == true
			{ 
				//instance_create_depth(x,y,-2)
				receiveDamage = false
				actualLife-=10;
				//image_blend = c_purple //muda cor sprite para roxo, codigo não necessario
				effect_create_above(ef_star,x,y,1,c_red)
			}
	estado_slime_boss = sc_attack_SlimeBoss;
}

function atack2() {
	if place_meeting(x,y,obj_attack2) and obj_Player.receiveDamage == true
					{ 
						Tiro = instance_create_layer(x,y,"BulletLayer",obj_attack2)
						Tiro.direction = point_direction(x,y,obj_Player.x,obj_Player.y);
						Tiro.speed = 2;
						
						obj_Player.receiveDamage = false
						obj_Player.actualLife-=10;}
				estado_slime_boss = sc_attack_SlimeBoss;
					/*with (obj_Boss){
						
						Tiro = instance_create_layer(x,y,"BulletLayer",obj_attack2)
						Tiro.direction = point_direction(x,y,obj_Player.x,obj_Player.y);
						Tiro.speed = 2;
					*/
}
