event_inherited();


if (!is_dead) {
    // Chama a função de estado, se ela existir
    if (is_callable(state)) {
        state();
    }
}

if (vida <= 0 && player_morto == false) {
	player_morto = true;
	PlayerDead();
	
}


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