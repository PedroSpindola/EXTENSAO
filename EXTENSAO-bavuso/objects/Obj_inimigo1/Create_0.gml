event_inherited();
move_dir=1;
move_spd=10;
vida=2;

state_andando = function(){
		
	
	hspd=move_dir * move_spd
	
	if(place_meeting(x+hspd, y, obj_chao)){
	
		move_dir*= -1;
	}

}
state=state_andando;