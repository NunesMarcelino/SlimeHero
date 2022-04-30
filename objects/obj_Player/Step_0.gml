/// @description Insert description here
// You can write your code in this editor

//Get input (keyboard)
if (actualLife > 0)//control deactive if life equal zero
{
	
/*	xspd = 0;
	
	if(keyboard_check_pressed((ord("A"))))
	{
		xspd = -1*spd;
	} else if(keyboard_check((ord("D"))))
	{
		xspd = spd;
	}
	
	yspd = 0;
	
	if(onGround == true)
	{
		if(keyboard_check(ord("W")))
		{
			yspd = -1*spd;
		} else if(keyboard_check(ord("S")))
		{
			yspd = spd;
		}
	}
	
	if(isAttacking == false && isHit = false)
	{
         
    if(onGround==true){    
    if(xspd != 0 && yspd != 0){
        x+=xspd*spdMod*.7;
        y+=yspd*spdMod*.7;
    }else if(xspd != 0 || yspd != 0){
        x+=xspd*spdMod;
        y+=yspd*spdMod;
    }
     
}else if(onGround == false ){
    x+=xspd*spdMod;
}
     
    if(xspd != 0){
    image_xscale = sign(xspd*spdMod);
	}
     
    if(xspd == 0 && yspd == 0 && onGround == true){
    speedMod = 1;
    sprite_index = sp_Slime_idle;
}else if((xspd!=0 || yspd != 0) && sprite_index!=sp_attack1 && onGround == true){
    sprite_index = sp_attack1;
}
	}
	
	//If the player is on the ground, this sets their groundY variable to their current y position
if(onGround == true){
    groundY = y;
}
 
//Sets the Players' depth based on their groundY. We're using groundY instead of y so that even when they're in the air, they will display in fornt of and behind the right objects.
depth = -1*groundY;
	
	
	if(onGround == true){
    groundY = y;
}
depth = -1*groundY;*/
	
left = keyboard_check_pressed(vk_left) ||  keyboard_check_pressed(ord("A"));
down = keyboard_check_pressed(vk_down) || keyboard_check_pressed(ord("S"));
up = keyboard_check_pressed(vk_up) || keyboard_check_pressed(ord("W"));
right = keyboard_check_pressed(vk_right) ||  keyboard_check_pressed(ord("D"));
attack = keyboard_check_pressed(vk_space)
stop = keyboard_check(vk_shift)




if (left)
{
	if(!stop)x-=spd;
	image_xscale=-1
	lastDirection = "left";
	
} else if (right)
{
	if(!stop)x+=spd;
	image_xscale=1
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


////////screen colision
//horizontal collision
if x > room_width - 40{x = xprevious;}
if x < 32 {x = 32;}
//vertical collision
if y > room_height - 40 {y = yprevious;}
if y < 32 {y = 32;}

//damage instance example, not necessari permanent code piece
if !alarm[0]  
{
	if (place_meeting(x,y,obj_Boss))
	{
		actualLife-=10;
		alarm[0] = (room_speed * stun_time);
	}
 
}


} else
{
	instance_destroy();
	room_goto(rm_end);
}//control deactive if life equal zero

//passar pelo portal

if(place_meeting(x,y,obj_Portal)){
	room_goto_next()
}
