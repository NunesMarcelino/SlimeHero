/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_textbox)
{
	op_num = obj_textbox.option_position
	
	done = true
}

if !instance_exists(obj_textbox) && done == true
{		
	if op_num == 0
		room_goto(rm_boss1)
		
	if op_num == -1
		room_goto(rm_startGame)
}
