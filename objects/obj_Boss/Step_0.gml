/// @description Insert description here
// You can write your code in this editor

 
if (Life>0)  //se tiver vida faça step
{
	scr_Move()
	
	if obj_Player.x != x{
    image_xscale = sign(obj_Player.x - x);}
	
//dano dentro ao redor do Evilo
with obj_Player{ //recebe os eventos e aplica ao obj player
	Attack1() //Script de dano
	Hit_Player()
}

	
} else {
	
	sprite_index = sp_Evilo_death
	
	if (image_index >= image_number-1)
		createthemosnter = true;
		
		
}

if createthemosnter = true {
		instance_create_layer(x,y,"Instances",obj_Demon_Boss);
		instance_destroy();
}
