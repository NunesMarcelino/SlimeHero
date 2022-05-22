// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_text(_text)
{
	draw_set_color(c_white);
	text[page_number] = _text;
	page_number++;
	
}