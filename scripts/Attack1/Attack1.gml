// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
	
function Attack1()
{
	
	/*if (obj_Player.lastDirection == "right")
	{
		instance_create_layer(obj_Player.x+72,obj_Player.y,"Instances",obj_Attack)
	}
	else if (obj_Player.lastDirection == "left")
	{		
		instance_create_layer(obj_Player.x-72,obj_Player.y,"Instances",obj_Attack)
	} else if (obj_Player.lastDirection =="up")
	{
		instance_create_layer(obj_Player.x,obj_Player.y-72,"Instances",obj_Attack)
	}
	 else if (obj_Player.lastDirection =="down")
	{
		instance_create_layer(obj_Player.x,obj_Player.y+72,"Instances",obj_Attack)
	}
*/

//dano ao redor do Evilo
if (place_meeting(x,y,obj_Boss)) // dentro do Evilo
	{
		actualLife-=10;
		alarm[0] = (room_speed * stun_time);
		
	} else if place_meeting(x+72,y,obj_Boss) { //Oeste
		actualLife-=10;
		alarm[0] = (room_speed * stun_time);
	
	} else if place_meeting(x-72,y,obj_Boss) { //Leste
		actualLife-=10;
		alarm[0] = (room_speed * stun_time);
	
	} else if place_meeting(x,y+72,obj_Boss) { //Norte
		actualLife-=10;
		alarm[0] = (room_speed * stun_time);
	
	} else if place_meeting(x,y-72,obj_Boss) { //Sul
		actualLife-=10;
		alarm[0] = (room_speed * stun_time);
	
	} else if place_meeting(x+72,y+72,obj_Boss) { //Noroeste
		actualLife-=10;
		alarm[0] = (room_speed * stun_time);
	
	} else if place_meeting(x+72,y-72,obj_Boss) { //Sudoeste
		actualLife-=10;
		alarm[0] = (room_speed * stun_time);
		
	} else if place_meeting(x-72,y+72,obj_Boss) { //Nordeste
		actualLife-=10;
		alarm[0] = (room_speed * stun_time);
	
	} else if place_meeting(x-72,y-72,obj_Boss) { //Sudeste
		actualLife-=10;
		alarm[0] = (room_speed * stun_time);
	} 

}