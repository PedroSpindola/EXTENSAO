event_inherited();


if (!is_dead) {
    // Chama a função de estado, se ela existir
    if (is_callable(state)) {
        state();
    }
}

if (vida <= 0) {
    PlayerDead();
}

if (sprite_index == Spr_player_dead) {
    if (image_index >= image_number - 1) {
        room_restart();
    }
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