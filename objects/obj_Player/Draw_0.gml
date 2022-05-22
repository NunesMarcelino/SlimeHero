/// @description Insert description here
// You can write your code in this editor

//set the opacity to 60% and then draw a dark gray oval for the shadow.
//shadow  is a maybe, can be removed later

draw_set_alpha(.6);
draw_ellipse_color(x-42,y+13,x+36,y+32,c_dkgray,c_dkgray,false);

//draw own sprite.
draw_set_alpha(1);
draw_self();



