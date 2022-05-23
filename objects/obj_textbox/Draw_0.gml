/// @description Insert description here
// You can write your code in this editor

depth = -9999;


accept_keys = keyboard_check_pressed(vk_enter)

textbox_x = camera_get_view_x(view_camera[0])
textbox_y = camera_get_view_y(view_camera[0]) + 450;

if setup == false
{
	setup = true
	draw_set_font(global.font_main);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left);
	draw_set_color(c_white);
	
	
	//loop pages
	for(var p = 0; p < page_number; p++)
	{
		//encontrar quantas letras tem em cada pagina e armazenar em text_length array
		text_length[p] = string_length(text[p]);
		
		//posicao offset da box em x
		//sem character
		text_x_offset[p] = 380;
	}
}

if draw_char < text_length[page]
{
	draw_char += text_speed;
	draw_char = clamp(draw_char, 0, text_length[page]);
	
}

//flip trough pages -------------------------------------------------
if accept_keys
{
	
	//if typing is done
	if draw_char == text_length[page]
	{
		//next page
		if page < page_number-1
		{
			page++;
			draw_char = 0;
		}
		//destroy textbox
		else
		{
			instance_destroy();
			global.lock = false;
		}
	}
	//if not done tying
	else
	{
		draw_char = text_length[page];
	}
	
	
	
}

//draw textbox ------------------------------------------------------
txtb_img += txtb_img_spd
txtb_spr_w = sprite_get_width(txtb_spr)
txtb_spr_h = sprite_get_height(txtb_spr)

//localização da caixa como um todo
draw_sprite_ext(txtb_spr, txtb_img, textbox_x + text_x_offset[page], textbox_y, textbox_width/txtb_spr_w, textbox_height/txtb_spr_h, 0 ,c_white, 1);


//draw the text
var _drawtext = string_copy(text[page], 1, draw_char);

//localizacao do texto como todo
draw_text_ext(textbox_x + text_x_offset[page] + border, textbox_y + border, _drawtext, line_sep, line_width);
