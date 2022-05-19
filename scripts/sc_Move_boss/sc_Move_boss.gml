// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Move_boss(){
	grid = mp_grid_create(0,0, room_width / 72, room_height / 72,72,72) // cria grade para o boss andar
	path = path_add() // add o caminho a seguir
	
	
	if distance_to_object(obj_Player) < 145{ //se a distancia for menor que essa
		mp_grid_add_instances(path,obj_Boss,true) //
		mp_grid_path(grid,path,x,y,obj_Player.x,obj_Player.y,false) //cria o caminho até o player
		path_start(path,1.5,0,true) // inicia o caminho dele
	}
		
}