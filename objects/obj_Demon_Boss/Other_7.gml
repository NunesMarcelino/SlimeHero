/// @description Fim Animação
if sprite_index = spr_boss_demon_ataque
	{
		sprite_index = spr_boss_demon_idle;
	}

if sprite_index = spr_boss_demon_rise57
{
sprite_index = spr_boss_demon_idle;
}
if sprite_index = spr_boss_demon_ataque_hb
{
	sprite_index = spr_boss_demon_ataque;
	global.StopDamage = true;
	src_boss_atacando();
}

if sprite_index = spr_boss_demon_death
{
deathDemon = true;
}
