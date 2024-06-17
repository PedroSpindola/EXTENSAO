if (sprite_index == Spr_player_dead) {
	room_restart();
}


if(sprite_index == Spr_player_attack){
	state = PlayerStateFree();
}