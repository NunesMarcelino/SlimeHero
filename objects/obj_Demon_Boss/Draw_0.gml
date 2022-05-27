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
if (Life > 0){
draw_text(x-60, y-120,string(Life)+" / "+string(maxLife));
}

//var _x1
//var _x2
//var _y1
//var _y2
		
//if image_xscale == 2{ _x1 = x - 50; _x2 = x - 300	; _y1 = y + 100; _y2 = y - 100}
//if image_xscale == -2{ _x1 = x + 50; _x2 = x + 300; _y1 = y + 100; _y2 = y -100}
//draw_rectangle(_x1,_y1,_x2,_y2,true)
