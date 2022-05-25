/// @description Insert description here
draw_self();
image_xscale = 2;
image_yscale = 2;
if dest_x > x{ //inverção de lados imagem
	image_xscale = -2;
}else {
	image_xscale = 2;
}

//draw own sprite.
draw_set_alpha(1);
draw_self();
draw_set_color(c_red);
draw_text(x-60, y-120,string(Life)+" / "+string(maxLife));
