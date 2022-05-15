/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(vk_escape) and pausable == true
{
	isPaused = !isPaused;
	if isPaused == false
	{
		instance_activate_all();
		surface_free(pausedSurface);
					pausedSurface = -1;
	}
}

