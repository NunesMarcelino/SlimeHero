// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function scr_Move(){
	grid = mp_grid_create(0,0, room_width / 72, room_height / 72,72,72) // cria grade para o boss andar
	path = path_add() // add o caminho a seguir
		
	mp_grid_add_instances(path,obj_Colider,true)
	mp_grid_path(grid,path,x,y,obj_Player.x + 72 ,obj_Player.y + 72,false) //cria o caminho até o player
	path_start(path,1.5,0,true) // inicia o caminho dele
}


function Attack1(){
	for(var i = -72; i <=72; i+=72)
		for(var j = -72; j <=72; j+=72)
			if place_meeting(x+i,y+j,obj_Boss) and receiveDamage == true
			{ 
				receiveDamage = false
				actualLife-=10;
				alarm [0] = 50
			}

 //cor normal quando não recebe dano
			
function Hit_Player(){
	//fazer o player piscar com o dano recebido
	image_speed = 3;
	static _valor = -0.07
				
	if (image_alpha <=0) _valor *= -1
	if (image_alpha > 1) _valor *= -1
				
	image_alpha += _valor //se visivel fica positivo, senão, fica negativo :)
	image_speed = 1;
				
}
			
function Attack2(){
	if place_meeting(x,y,obj_Attack) and receiveDamage == true
	{ 
		receiveDamage = false
		actualLife-=10;
		alarm [0] = 50
	}
	with(obj_Boss){
		if Life > 0 and Life <=70{
		Tiro = instance_create_layer(x,y,"BulletLayer",obj_Attack);
		Tiro.direction = point_direction(x,y,obj_Player.x,obj_Player.y);
		Tiro.speed = 5}
		
}
}
}
