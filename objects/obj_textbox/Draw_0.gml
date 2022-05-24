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
			//link text options
			if option_number > 0
			{
				create_textbox(option_link_id[option_position])
			}
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



//options


//draw textbox ------------------------------------------------------
var _textb_x = textbox_x + text_x_offset[page]
var _textb_y = textbox_y
txtb_img += txtb_img_spd
txtb_spr_w = sprite_get_width(txtb_spr)
txtb_spr_h = sprite_get_height(txtb_spr)

//localização da caixa como um todo
draw_sprite_ext(txtb_spr, txtb_img, _textb_x, _textb_y, textbox_width/txtb_spr_w, textbox_height/txtb_spr_h, 0 ,c_white, 1);

if draw_char = text_length[page] && page == page_number -1
{
	//option select
	option_position += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up)
	option_position = clamp(option_position, 0, option_number-1);
	
	
	
	//options spacements
	var _op_space = 45;
	var _op_board = 12;
	
	for (var op = 0; op < option_number; op++)
	{
		
		
		//optioin box
		var _o_w = string_width(option[op]) + _op_board * 2
		draw_sprite_ext(txtb_spr, txtb_img, _textb_x + 46, _textb_y - _op_space * option_number + _op_space * op, _o_w/txtb_spr_w, (_op_space-1)/txtb_spr_h, 0, c_white, 1)
		
		//arrow
		if option_position == op
		{
			draw_sprite(sp_textbox_arrow, 0, _textb_x,  _textb_y + 8 - _op_space * option_number + _op_space * op)
		}
		
		//option text
		draw_text(_textb_x + 46 + _op_board,  _textb_y - _op_space * option_number + _op_space * op + 5, option[op])
		
	}
}

//draw the text
var _drawtext = string_copy(text[page], 1, draw_char);

//localizacao do texto como todo
draw_text_ext(textbox_x + text_x_offset[page] + border, textbox_y + border, _drawtext, line_sep, line_width);
