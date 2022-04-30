/// @description Insert description here
// You can write your code in this editor
 
if (Life>0)  //se tiver vida faça step
{
	
	if(isHit==true){
	   sprite_index = sp_Evilo_hit;
	}else{
	  sprite_index = sp_Evilo_idle;
	}
	
	if(instance_exists(obj_Player)){	
	if(distance_to_object(obj_Player)<300){
	mp_potential_step(obj_Player.x, obj_Player.y,spd,false)
  }
}

} else //senao morra
{ 
	sprite_index = sp_Evilo_death
	if (image_index >= image_number-1)instance_destroy() spd = 0
}


