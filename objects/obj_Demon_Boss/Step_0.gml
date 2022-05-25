/// @description 
	script_execute(estado);
	
//morte e criação do portal rm_won
	if (Life <= 0) and deathDemon = false {
		sprite_index = spr_boss_demon_death;
		deathDemon = true;
		alarm[0]= 27;
	}
	if deathDemon = true && alarm [0] <= 0  {
		global.endgame = true;
		instance_create_layer(x,y,"Instances",obj_Portal);
		instance_destroy();
	}
	
	
