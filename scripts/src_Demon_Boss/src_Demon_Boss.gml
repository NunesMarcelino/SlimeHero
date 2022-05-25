// Script assets have changed for v2.3.0 see
function src_boss_escolher_action(){
	if Rise = true {
	sprite_index = spr_boss_demon_rise;
	Rise = false; 
	alarm[0] = 240;
}else{
	if alarm[0] <= 0 
		{
		var _ataque = choose(src_boss_ataque_1, src_boss_ataque_2, src_boss_follow);
		estado = _ataque;
		alarm[0] = 240;
		}
}
	
	
}

function src_boss_ataque_1(){ //Projetil
	//parar de andar
	src_boss_stop_walk();
	
	var _dir = 0;
	
	repeat(8){
		var _inst = instance_create_layer(x,y,"Instances", obj_boss_projetil);
		_inst.speed = 2;
		_inst.direction = _dir;
		
		_dir += 45;
	}
	estado = src_boss_escolher_action;
}

function src_boss_ataque_2(){ //Melle
	//parar de andar
	src_boss_stop_walk();
	
	sprite_index = spr_boss_demon_ataque_hb;
	sprite_index = spr_boss_demon_ataque;
	src_boss_atacando();

}

function src_boss_follow(){
	
	src_boss_stop_walk();
	
	if distance_to_object(obj_Player) > 70 {
		grid = mp_grid_create(0,0, room_width / 72, room_height / 72,72,72) // cria grade para o boss andar
		path = path_add() // add o caminho a seguir
		dest_x = obj_Player.x;
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

function src_boss_atacando(){
		var _inst = instance_place(x, y, obj_Player);
		if _inst != noone and StopDamage = false
			{
		    _inst.actualLife -= 20;
			StopDamage = true
			alarm[1] = 240;
			}
	estado = src_boss_escolher_action;
	}


