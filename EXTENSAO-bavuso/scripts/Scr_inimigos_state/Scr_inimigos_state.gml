function Scr_inimigos_state_free(){


}
function inimigos_dano(){

	if(place_meeting(x+hspd,y,Obj_player)){
	
	vida--
	//mudar o Obj do place_meeting para o obj da arma e do tiro
	if(vida<=0){
	
	instance_destroy();
	
	}
	
	}

}

