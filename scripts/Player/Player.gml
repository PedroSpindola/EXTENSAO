function PlayerStateFree(){
key_jump = keyboard_check(ord("W"));
key_right = keyboard_check(ord("D"));
key_left = keyboard_check(ord("A"));
//key_down = keyboard_check(ord("S"));
var _move = key_right - key_left !=0;

if(_move){

move_dir= point_direction(0,0, key_right - key_left,0)
move_spd = Approach(move_spd,move_spd_max,acc)
	
	}
else{

move_spd = Approach(move_spd,0,dcc)

	}
hspd = lengthdir_x(move_spd, move_dir)

if place_meeting(x, y+1, obj_chao) and key_jump{
	vspd -= 20;
	}
	
	if (mouse_check_button(mb_right)){
		if(mouse_x < x) image_xscale = -1; 
	else image_xscale = 1;
	image_index = 0;
    state = PlayerStateAttack;
	}
}

function PlayerStateAttack() {
	sprite_index = Spr_player_attack;
	if(image_index > 0){
		if(!instance_exists(Obj_hitbox)){
			instance_create_layer(x + (20 * image_xscale), y, Obj_hitbox);
		}	
	}
	sprite_index = Spr_player_attack;
		if(image_index >= image_number - 1){
		if(instance_exists(Obj_hitbox)) instance_destroy(Obj_hitbox)
		state = PlayerStateFree;

	}

}


/*
/*
    var inimigos_na_hitbox = ds_list_create();
    
    var num_inimigos = instance_place_list(x, y, Obj_inimigo1, inimigos_na_hitbox, false);
    
    if (num_inimigos > 0) {
        for (var i = 0; i < num_inimigos; i++) {
            var inimigoID = inimigos_na_hitbox[| i];

            if (ds_list_find_index(inimigos_atingidos, inimigoID) == -1) {
                ds_list_add(inimigos_atingidos, inimigoID);
                
                with (inimigoID) {
                    hp -= 10;
                }
            }
        }
    }


    ds_list_destroy(inimigos_na_hitbox);

  
    if (fim_da_animacao()) {
        state = PlayerState.FREE;
    }
	*/