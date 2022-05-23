// Script assets have changed for v2.3.0 see
function src_boss_escolher_ataque(){
	
	if alarm[0] <= 0 {
		
		var _ataque = choose(src_perseguir);
		estado = _ataque;
		alarm[0] = 240;
}

}

function src_boss_ataque_1(){
	var _dir = 0;
	
	repeat(8){
		var _inst = instance_create_layer(x,y,"Instances", obj_boss_projetil);
		_inst.speed = 2;
		_inst.direction = _dir;
		
		_dir += 45;
	}
	estado = src_boss_escolher_ataque;
}

function src_boss_ataque_2(){
	if distance_to_object(obj_Player) <= attackRange{
		sprite_index = spr_boss_demon_ataque;
	}
	estado = src_boss_escolher_ataque;
}

function src_perseguir(){

	grid = mp_grid_create(0,0, room_width / 64, room_height / 64, 64,64)
	path = path_add();

	mp_grid_add_instances(path, obj_Demon_Boss, true);
	mp_grid_path(grid, path, x, y, obj_Player.x, obj_Player.y, false)
	path_start(path, 2, 0, true)
}
