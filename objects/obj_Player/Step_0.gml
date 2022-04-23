/// @description Insert description here
// You can write your code in this editor

//Get input (keyboard/controller)

/*left = keyboard_check(vk_left);
right = keyboard_check(vk_right);
up = keyboard_check(vk_up);
down = keyboard_check(vk_down);*/

left = keyboard_check_pressed(vk_left)
down = keyboard_check_pressed(vk_down)
up = keyboard_check_pressed(vk_up)
right = keyboard_check_pressed(vk_right)

if (left)
{
	x-=spd;
	
} else if (right)
{
	x+=spd;
}

if (down)
{
	y+=spd;
} else if (up)
{
	y-=spd;
}
////////screen colision
//horizontal collision
if x > room_width-72 {x = xprevious;}
if x < 0 {x = 0;}
//vertical collision
if y > room_height-72 {y = yprevious;}
if y < 0 {y = 0;}


