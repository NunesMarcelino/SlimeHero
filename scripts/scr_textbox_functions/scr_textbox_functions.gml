// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_text(_text)
{
	draw_set_color(c_white);
	text[page_number] = _text;
	page_number++;
	
}

function scr_option(_option, _link_id)
{
	option[option_number] = _option;
	option_link_id[option_number] = _link_id;
	
	option_number ++;
}

function create_textbox(_text_id)
{
	with (instance_create_depth(0,0, -9999, obj_textbox))
	{
		scr_game_text(_text_id)				
	}
}

