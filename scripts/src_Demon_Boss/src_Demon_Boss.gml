// Script assets have changed for v2.3.0 see
function src_boss_escolher_action(){
	if Rise = true 
	{
		sprite_index = spr_boss_demon_rise57;
		Rise = false; 
		alarm[0] = 180;
	}else{
		if alarm[0] <= 0 
			{
			var _ataque = choose(src_boss_ataque_2, src_boss_ataque_1,src_boss_follow);
			estado = _ataque;
			dp = true;
			alarm[0] = 180;
			}
}
	
	
}

function src_boss_ataque_1(){ //Projetil
	//parar de andar
	src_boss_stop_walk();
	//Tocar a la caramba
	/*if (Life > 400)
	{
		var _dir = 0;
	
		repeat(8)
		{
		var _inst = instance_create_layer(x,y,"Instances", obj_boss_projetil);
		_inst.speed = 2;
		_inst.direction = _dir;
		
		_dir += 45;
		}
	
	}//menos vida
	else 
	
		}
estado = src_boss_escolher_action;
}
	{*/
	
	 if ataque mod 2 == 1 {
		 var _dir = 0;
	 }else if ataque mod 2 == 0{
		var _dir = 22.5;
	 }
	 
		if ataque > 0
		{
			if alarm[0] <= 0
			{
				repeat(8)
				{
				var _inst = instance_create_layer(x,y,"Instances", obj_boss_projetil);
				_inst.speed = 4;
				_inst.direction = _dir;
				_dir += 45;
				}
			 ataque -= 1;
			 alarm[0] = 30;
			}
		} else 
			{
			gamerule = true
			ataque = 5;
			estado = src_boss_escolher_action;
			}
}

function src_boss_ataque_2(){ //Melle
	//parar de andar
	src_boss_stop_walk();
	
	if distance_to_object(obj_Player) <= attackRange
	{
			sprite_index = spr_boss_demon_ataque_hb;
	}
estado = src_boss_escolher_action;
}

function src_boss_follow(){
	
	src_boss_stop_walk();
	
	if distance_to_object(obj_Player) > 70 {
		grid = mp_grid_create(0,0, room_width / 72, room_height / 72,72,72) // cria grade para o boss andar
		path = path_add() // add o caminho a seguir
		
		sprite_index = spr_boss_demon_walk;
		
		mp_grid_add_instances(path,obj_Boss,true)
		mp_grid_path(grid,path,x,y,obj_Player.x + 10 ,obj_Player.y + 10,false) //cria o caminho até o player
		path_start(path,1.5,0,true) // inicia o caminho dele
		estado = src_boss_escolher_action;
		
	} else {
		estado = src_boss_ataque_2;
	}
}

function src_boss_stop_walk(){
	if distance_to_object(obj_Player) < 70 
	{
	sprite_index = spr_boss_demon_idle
	path_end()
	}
}

function src_boss_atacando()
{
		with (obj_Demon_Boss){
		var _x1
		var _x2
		var _y1
		var _y2
		
		if image_xscale == 2{ _x1 = x - 50; _x2 = x - 300	; _y1 = y + 100; _y2 = y - 100}
		if image_xscale == -2{ _x1 = x + 50; _x2 = x + 300; _y1 = y + 100; _y2 = y -100}
		
		var _inst
		var _inst = collision_rectangle(_x1,_y1,_x2,_y2,obj_Player,true,true) 
	    if _inst != noone && global.StopDamage == true
		{
	        obj_Player.actualLife -= 20;
			global.StopDamage = false;
	    } 
			else 
			{
		       estado = src_boss_ataque_1;
			}
		}
		
		//with (obj_Player)
	//{
		
	//}
		/*if collision_rectangle(,obj_Demon_Boss,true,true) && global.StopDamage == true
			{
		    obj_Player.actualLife -= 20;
			StopDamage = false;
			} else
		{
	estado = src_boss_escolher_action;*/
	
}

