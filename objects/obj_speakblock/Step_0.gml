enter = keyboard_check_pressed(vk_enter)

if place_meeting(x,y,obj_Player) && enter && !instance_exists(obj_textbox)
	{
		create_textbox(text_id);
		global.lock = true;
	}
