event_inherited();
if(instance_exists(Obj_transicao)) exit
if(vida<=0){
	is_dead = true;
}

if (!is_dead) {
    // Chama a função de estado, se ela existir
    if (is_callable(state)) {
        state();
    }
}else{
	sprite_index = Spr_player_dead;
	hspd = 0;
	vspd = 0;
}
usa_arma();
joga_arma();




/*
switch (state)
{
    case PlayerStateFree: 
        PlayerStateFree(); 
        break;
    case PlayerStateAttack: 
        PlayerStateAttack(); 
        break;
}