/// @description Insert description here
// You can write your code in this editor

if obj_Player.x < x && turning == false
	{
		turning = true
		image_xscale = -1.2;
		alarm[0] = room_speed * turn_time;
		
		
		
	} 
	
if obj_Player.x > x && turning == false
	{
		turning = true
		image_xscale = 1.2;
		alarm[0] = room_speed * turn_time;
		
		
	}
