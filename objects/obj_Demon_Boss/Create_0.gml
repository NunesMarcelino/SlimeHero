/// @description 

//posição inicial
inicialPosicionx = 672;
inicialPosiciony = 352;


obj_Demon_Boss.x = inicialPosicionx;
obj_Demon_Boss.y = inicialPosiciony;

//Vida e estados
estado = src_boss_escolher_action; //iniciar escolha src
attackRange = 90; // ataque boss
maxLife = 800;
Life = maxLife;
spd = 72;

dest_x = 0;//direção da imagem
//dest_y = 0;

//tocar o camramba
ataque = 5;

global.StopDamage = false;
Rise = true;
deathDemon = false;
//disponivel
dp = true;


