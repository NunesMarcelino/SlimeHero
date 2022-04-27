/// @description Insert description here

// You can write your code in this editor

if !alarm[0]  
{
	if (place_meeting(x,y,obj_Boss))
	{
		obj_Boss.Life-=20;
		alarm[0] = (room_speed * lifeTime);
	}		
}
