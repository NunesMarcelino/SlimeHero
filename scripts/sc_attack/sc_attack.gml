// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
	
function Attack1()
{
	for(var i = -72; i <=72; i+=72)
		for(var j = -72; j <=72; j+=72)
			if place_meeting(x+i,y+j,obj_Boss) and receiveDamage == true
			{
				receiveDamage = false
				actualLife-=10;
			}
}

