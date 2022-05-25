/// @description Insert description here
draw_self();
image_xscale = 2;
image_yscale = 2;

//inverção de lados imagem
dest_x = obj_Player.x;
if dest_x > x{ 
	image_xscale = -2;
}else {
	image_xscale = 2;
}

//draw own sprite.
draw_set_alpha(1);
draw_self();
draw_set_color(c_red);
draw_text(x-60, y-120,string(Life)+" / "+string(maxLife));
