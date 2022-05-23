

if place_meeting(x,y,obj_Player) && keyboard_check_pressed(vk_enter) && !instance_exists(obj_textbox)
	{
		create_textbox(text_id);
	}
