// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Move(){
	grid = mp_grid_create(0,0, room_width / 72, room_height / 72, 72,72)
	path = path_add()
	
	if distance_to_object(obj_Player) < 175{
		mp_grid_add_instances(path, obj_Colider,true)
		mp_grid_path(grid,path,x,y,obj_Player.x, obj_Player.y,false)
		path_start(path,1.5,0,false)
	
	}
}