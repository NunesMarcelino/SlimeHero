/// @description Insert description here
// You can write your code in this editor

//set the opacity to 60% and then draw a dark gray oval for the shadow.
//shadow  is a maybe, can be removed later
draw_set_alpha(.6);
draw_set_color(c_dkgray);
draw_ellipse(x-10,y+45,x+70,y+65,false);
 
//draw own sprite.
draw_set_alpha(1);
draw_self();