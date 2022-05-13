/// @description Insert description here
// You can write your code in this editor

//Get input (keyboard)
if (actualLife > 0)//control deactive if life equal zero
{
		
left = keyboard_check_pressed(vk_left) ||  keyboard_check_pressed(ord("A"));
down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
right = keyboard_check_pressed(vk_right) ||  keyboard_check_pressed(ord("D"));
attack = keyboard_check_pressed(vk_space)
stop = keyboard_check(vk_shift)


//auto attack player state machine
if (target != noone)
{
	if (instance_exists(target))
	{
		
		if (distance_to_object(target) <= attackRange)
		{
			sprite_index = sp_Slime_Attack1;
			if (canAttack = true)
			{					
				canAttack = false;
				target.Life -= irandom_range(attackDMG-5,attackDMG+5); 
				alarm[0] = attackSpeed;
			}  			
		}
	}
	if (image_index >= image_number-1)
				sprite_index = sp_Slime_idle	
}




	


if (left)
{
	if(!stop)x-=spd;
	lastDirection = "left";
	
} else if (right)
{
	if(!stop)x+=spd;
	lastDirection = "right";
}

if (down)
{
	if(!stop)y+=spd;
	lastDirection = "down";
} else if (up)
{
	if(!stop)y-=spd;
	lastDirection = "up";
}

//player virar na direção do inimigo mais próximo


////////screen colision
//horizontal collision
if x > room_width - 40{x = xprevious;}
if x < 32 {x = 32;}
//vertical collision
if y > room_height - 40 {y = yprevious;}
if y < 32 {y = 32;}


} else
{
	instance_destroy();
	room_goto(rm_end);
}//control deactive if life equal zero

//passar pelo portal

if(place_meeting(x,y,obj_Portal)){
	room_goto(rm_boss1)
}
