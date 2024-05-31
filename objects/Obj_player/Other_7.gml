/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor
if(sprite_index == Spr_player_dead){
	room_restart();
}
if(sprite_index == Spr_player_attack){
	state = PlayerStateFree();
}