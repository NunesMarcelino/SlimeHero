/// @description Insert description here
// You can write your code in this editor


if isPaused == true
{
	camx = camera_get_view_x(view_camera[0]);
	camy = camera_get_view_y(view_camera[0]);
	location_height = ((window_get_height()/2) + camy -100)
	location_width = ((window_get_width()/2) +  camx -100)
	
if !surface_exists(pausedSurface)
    {
    if pausedSurface == -1
        {
        instance_deactivate_all(true);
        }
    pausedSurface = surface_create(room_width, room_width);
    surface_set_target(pausedSurface);
    draw_surface(application_surface, camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]));
    surface_reset_target();
    }

else
    {
    draw_surface(pausedSurface, 0, 0);
    draw_set_alpha(0.5);
    draw_rectangle_colour(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
    draw_set_alpha(1);
    draw_set_halign(fa_center);
    draw_sprite_ext(sp_Pause,0,location_width,location_height,8,8,0,c_white,1)
    draw_set_halign(fa_left);
	
    }
}
