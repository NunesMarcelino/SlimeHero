/// @description Insert description here
// You can write your code in this editor
 
if (Life>0)  //se tiver vida faça step
{
	
	if obj_Player.x != x{
    image_xscale = sign(obj_Player.x - x);}
	
//dano dentro ao redor do Evilo
with obj_Player{ //recebe os eventos e aplica ao obj player
	Attack1() //Script de dano
}

if (Life<70){ //aqui vai ser o attack2
	sprite_index = sp_Evilo_idle2
}
	
} else {
	
	sprite_index = sp_Evilo_death
	
	if (image_index >= image_number-1)
		instance_destroy();
}
