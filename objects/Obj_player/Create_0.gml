pontuacao = 0;
event_inherited();
move_spd=10;
vida=1;
dano=5;
is_dead = false;
state = PlayerStateFree;
inimigos_atingidos = ds_list_create();
player_morto = false;
moedas = 0;
/*
enum PlayerState 
{
	FREE,
	ATTACK,
	
}
*/