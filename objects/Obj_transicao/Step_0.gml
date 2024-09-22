


if(mudei){
	
	alpha-= 0.01
	
}else{
	
	alpha +=0.01
	
}

if(alpha >= 1){

	room_goto(destino)
	
	Obj_player.x = destinoX
	Obj_player.y = destinoY
	
}

if(mudei and alpha <=0){

	instance_destroy()	
	
}
