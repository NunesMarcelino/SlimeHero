/// @description Insert description here
// You can write your code in this editor

//set the opacity to 60% and then draw a dark gray oval for the shadow.
//shadow  is a maybe, can be removed later
draw_set_alpha(.6);
draw_set_color(c_dkgray);
draw_ellipse(x-42,y+13,x+36,y+32,false);
 

//draw own sprite.
draw_set_alpha(1);
draw_self();

if(attack and !alarm[1]){	
	//AtackState();
	alarm[1] = (room_speed * attackCD)
}


