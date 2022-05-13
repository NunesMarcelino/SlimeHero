/// @description Insert description here
// You can write your code in this editor

draw_sprite_stretched(sp_healthBarBackgound,0,healthbar_x,healthbar_y-9,healthbar_width, healthbar_heigth+20)
draw_sprite_stretched(sp_healthBar,0,healthbar_x,healthbar_y,(actualLife/maxLife) * healthbar_width, healthbar_heigth);
draw_sprite_stretched(sp_healthBarBorder,0,healthbar_x,healthbar_y-9,healthbar_width, healthbar_heigth+20)

//mostrar posição atual
draw_text(903,102,obj_Player.x)
draw_text(903,140,obj_Player.y)

//draw_text_transformed(x, y, string, xscale, yscale, angle);
