
{
function Scr_inimigos_state_free(){

	hspd=move_dir * move_spd
	if(place_meeting(x+hspd, y, obj_chao)){
	
		move_dir*= -1;
	}

}
function inimigos_dano(pontos){

	if(place_meeting(x+hspd,y,Obj_player)){
	Obj_player.pontuacao += pontos;
	vida--
	//mudar o Obj do place_meeting para o obj da arma e do tiro
	if(vida<=0){
		instance_destroy();
		
		}
	}

}
function tiro(){
	 
	
	var distancia=point_distance(x,y, Obj_player.x, Obj_player.y)
	
	if(distancia<300){

		hspd=0
		
		if(global.tempo_tiro==true){
			
			var direcao_jogador = point_direction(x, y, Obj_player.x, Obj_player.y);

			_xx = x + lengthdir_x(64, direcao_jogador);
			_yy = y + lengthdir_y(64, direcao_jogador);
			audio_play_sound(Tiro_inimigo, 2,false)
			var _tiro = instance_create_layer(_xx,_yy,"Instances",Obj_tiro_inimigo);
			_tiro.direction = direcao_jogador;
			
			global.tempo_tiro=false;
			alarm[0] = room_speed * 1
			
		}
	}

}
}

