// Script assets have changed for v2.3.0 see
function src_boss_escolher_action(){
	
	if alarm[0] <= 0 {
		
		var _ataque = choose(src_boss_ataque_1, src_boss_ataque_2, src_boss_follow);
		estado = _ataque;
		alarm[0] = 240;
}

}

function src_boss_ataque_1(){
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

function src_boss_ataque_2(){
	//parar de andar
	src_boss_stop_walk();
	
	if distance_to_object(obj_Player) <= attackRange{
		sprite_index = spr_boss_demon_ataque;
	}
	estado = src_boss_escolher_action;
}

function src_boss_follow(){
	
	src_boss_stop_walk();
	
	if distance_to_object(obj_Player) > 70 {
		grid = mp_grid_create(0,0, room_width / 72, room_height / 72,72,72) // cria grade para o boss andar
		path = path_add() // add o caminho a seguir
		dest_x = obj_Player.x;
		sprite_index = spr_boss_demon_walk;
		
		mp_grid_add_instances(path,obj_Boss,true)
		mp_grid_path(grid,path,x,y,obj_Player.x,obj_Player.y,false) //cria o caminho até o player
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
