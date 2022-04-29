/// @description Insert description here
// You can write your code in this editor
 
if (Life>0)  //se tiver vida faça step
{
	
	if(isHit==true){
	   sprite_index = sp_Evilo_hit;
	}else{
	  sprite_index = sp_Evilo_idle;
	}

} else //senao morra
{ 
	sprite_index = sp_Evilo_death
	if (image_index >= image_number-1)instance_destroy()	
}
