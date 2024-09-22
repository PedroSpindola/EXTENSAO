/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

player = place_meeting(x,y, Obj_player)

espaco = keyboard_check_released(vk_space)

if(player and espaco){
	
	tran = instance_create_layer(0,0, layer, Obj_transicao)
	
	tran.destino = destino;
	tran.destinoX = destinoX
	tran.destinoY = destinoY
	
}