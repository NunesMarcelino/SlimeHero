// Script assets have changed for v2.3.0 see
function src_boss_escolher_ataque(){
	
	if alarm[0] <= 0 {
		
		var _ataque = choose(src_boss_ataque_1,src_boss_ataque_2);
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
		sprite_index = Boss_demon_ataque;
	}
	estado = src_boss_escolher_ataque;
}

function src_perseguir(){
	dest_x = obj_Player.x;
	dest_y = obj_Player.y;
	
	var _dir = point_direction(x,y,dest_x, dest_y);
	hveloc = lengthdir_x(spd, _dir);
	vveloc = lengthdir_y(spd, _dir);
}
