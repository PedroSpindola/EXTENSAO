if(instance_exists(Obj_player)){
	with(Obj_player){	
		if (place_meeting(x, y + 1, other.id)){
			x += other.velh;
			y += other.velv;
		}	
	}	
}
if place_meeting(x, y + velv, obj_chao_invisivel){
	velv *= -1;
}

if place_meeting(x, y + velv, obj_chao){
	velv *= -1;
}

x += velh;
y +=velv;
