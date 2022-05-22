// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Attack1()
{
	for(var i = -72; i <=72; i+=72)
		for(var j = -72; j <=72; j+=72)
			if place_meeting(x+i,y+j,obj_Boss) and receiveDamage == true
			{ 
				receiveDamage = false
				actualLife-=10;
				//image_blend = c_purple //muda cor sprite para roxo, codigo não necessario
				
				
			} 
					if receiveDamage != false {image_alpha=1 image_blend = c_white} //cor normal quando não recebe dano
			
			function Hit_Player(){
				if receiveDamage == false //so pisca quando não recebe dano O.o
				{
					//fazer o player piscar com o dano recebido
					image_speed = 3;
					
					static _valor = -0.07
				
					if (image_alpha <=0) _valor *= -1
					if (image_alpha > 1) _valor *= -1
				
					image_alpha += _valor //se visivel fica positivo, senão, fica negativo :)
					//se usar a linha 11, sprite fica todo roxo, até ataque, com isso, sprite fica normal
					/*
					if (sprite_index == sp_Slime_Attack1){
					image_blend = c_white
					}*/
					image_speed = 1;
				}
				
			}
}
