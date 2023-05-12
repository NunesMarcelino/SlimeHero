/// @description Insert description here
// You can write your code in this editor
if receiveDamage != false {image_alpha=1 image_blend = c_white}

//Get input (keyboard)
if (actualLife > 0)//control deactive if life equal zero
{
		
left = keyboard_check_pressed(vk_left)
down = keyboard_check_pressed(vk_down)
up = keyboard_check_pressed(vk_up)
right = keyboard_check_pressed(vk_right)
attack = keyboard_check_pressed(vk_space)
stop = keyboard_check(vk_shift)
restart_room = keyboard_check_pressed(ord("R"))


//voltar a receber dano depois de um tempinho
if actualLife < beforeLife
{
	receiveDamage = false
	beforeLife = actualLife;
	alarm[1] = room_speed * stun_time
}

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
				target.Life -= irandom_range(attackDMG-5,attackDMG+2); 
				alarm[0] = attackSpeed;
			}  			
		}
	}
	if (image_index >= image_number-1)
				sprite_index = sp_Slime_idle	
}

	
if restart_room {room_restart()} //reinicia a sala



if global.lock == false
{
	if (left)
	{
		if(!stop)x-=spd;
		lastDirection = "left";
		image_xscale = -1
	
	} else if (right)
	{
		if(!stop)x+=spd;
		lastDirection = "right";
		image_xscale = 1
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
//inicio

//final
if(place_meeting(x,y,obj_Portal) && global.endgame = true)
	{
		room_goto(rm_won);
	}
