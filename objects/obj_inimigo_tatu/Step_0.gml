event_inherited();

var jogador = instance_nearest(x, y, Obj_player);


if (jogador != noone) {
 
    var distancia_jogador_x = abs(jogador.x - x);
    var distancia_jogador_y = abs(jogador.y - y);

   
    var deteccao = 800;

   
    if (distancia_jogador_x < deteccao && distancia_jogador_y < 10) { 
        if (!preparando && !correndo) {
            preparando = true;
            contador = delay; // Iniciar o contador
			  sprite_index = Spr_inimigoTatu;
            if (jogador.x > x) {
                direcao = 1; 
            } else if (jogador.x < x) {
                direcao = -1; 
            }
        }
    }
    if (preparando) {
        contador--;
        if (contador <= 0) {
            preparando = false;
            correndo = true;
            sprite_index = Spr_inimigoTatuCorrendo; 
        }
    }


    if (correndo) {
        var new_x = x + (move_spd * direcao);
        if (!place_meeting(new_x, y, obj_chao)) {
            x = new_x;
        } 
    }

  
    if (place_meeting(x, y, Obj_player)) {
        jogador.pontuacao -= 20;
        jogador.vida--;
    }
	if(correndo && place_meeting(new_x,y,obj_chao)){
		correndo = false;
        preparando = false;
        sprite_index = Spr_inimigoTatu;
	}
}
